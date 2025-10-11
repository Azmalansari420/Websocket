<?php include('headercss.php'); ?>

<style>
    section {
      padding-top: 55px;
    padding-bottom: 52px;
    /* height: calc(100vh - 70px - 60px); */
    overflow-y: auto;
}

.bottom-footer a {
    background-color: black;
    border: none;
    padding: 8px 19px;
    font-size: 18px;
    border-radius: 5px;
    cursor: pointer;
    width: 100%;
    color: white;
}

.table-responsive-scroll {
  overflow-x: auto;
  -webkit-overflow-scrolling: touch; /* iOS smooth scroll */
}

.table-responsive-scroll table {
  min-width: 600px; /* apne columns ke hisab se adjust karein */
  white-space: nowrap;
}


.tablebox {
  background: #fff;
  border-radius: 12px;
  box-shadow: 0 6px 20px rgba(0,0,0,0.15);
  padding: 9px 15px;
  /*padding: 15px;*/
  margin-bottom: 10px;
  transition: all 0.3s ease-in-out;
}

.tablebox:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 25px rgba(0,0,0,0.25);
}

.table-title {
  font-size: 18px;
  font-weight: bold;
  margin-bottom: 15px;
  text-align: center;
  color: #333;
}

.table-responsive-scroll {
  overflow-x: auto;
  -webkit-overflow-scrolling: touch;
}

.table-responsive-scroll table {
  min-width: 600px;
  white-space: nowrap;
  border-radius: 10px;
  overflow: hidden;
}

.table-bordered th {
  background: linear-gradient(145deg, #000000, #000000);
  font-weight: bold;
  text-align: center;
  box-shadow: inset 0 -2px 3px rgba(0,0,0,0.05);
  color: white;
}

.table-bordered td {
  text-align: center;
  vertical-align: middle;
  background: #fff;
  box-shadow: inset 0 -1px 0 rgba(0,0,0,0.05);
}

td {
    background: #e6f7ff !important;
    color: red;
    font-weight: 600;
}

.table {
    margin-bottom: 5px;
}
.form-control, .form-control:focus, .form-control:hover {
    height: 30px;
}





</style>

<body style="background-image: url(<?=base_url() ?>asdsets/bg2-img.jpg);
    background-size: cover;
    background-position: right;">

    <div>
        <div class="top-header">
            <img src="<?=base_url() ?>media/uploads/site_setting/<?=$sitesetting[0]->logo ?>" style="    width: 50px;">
            <h4><?=website_name ?></h4>
            <a href=""><i class="fa fa-refresh text-white" style="color:white;"></i></a>
        </div>
        <!-- <div class="top-btn">
            <a href="index.php">MUMBAITAJ Results</a>
        </div> -->
    </div>
 


    <section>
        <div class="container">
            
            <div class="row" style="margin-top: 5px;">
                <div class="col-xs-12 tablebox">
                    <form id="filterForm" class="row" >
                        <div class="col-xs-6">
                            <select class="form-control" name="month" id="month">
                                <option value="" selected>--Select Month--</option>
                                <?php
                                $this->db->order_by('month desc');
                                $this->db->group_by('month');
                                $getmonth  = $this->db->get_where('number',array('status'=>1))->result_object();
                                foreach($getmonth as $data)
                                    { ?>
                                <option value="<?=$data->month ?>"><?=$data->month ?></option>
                            <?php } ?>
                            </select>
                        </div>
                        <div class="col-xs-6" id="year">
                            <select class="form-control" name="year">
                                <option value="" selected>--Select Year--</option>
                                <?php
                                $this->db->order_by('year desc');
                                $this->db->group_by('year');
                                $getmonth  = $this->db->get_where('number',array('status'=>1))->result_object();
                                foreach($getmonth as $data)
                                    { ?>
                                <option value="<?=$data->year ?>"><?=$data->year ?></option>
                            <?php } ?>
                            </select>
                        </div>
                    </form>
                </div>

                <!-- current month data -->    
                <?php
                $currentYear  = date('Y');
                $currentMonth = date('F');

                $this->db->select("*, DAY(create_on) as day_no");
                $this->db->where([
                    'year'    => $currentYear,
                    'month'   => $currentMonth,
                    'status'  => 1,
                    // 'game_id' => 59
                ]);
                $this->db->where_not_in('game_id',59);
                $numbers = $this->db->get('number')->result();

                // $this->db->where(['status'=>1,'game_id'=>59]);
                $this->db->order_by('gametime', 'asc');
                $this->db->group_by('game_id');
                $this->db->where_not_in('game_id',59);
                $times = $this->db->get('game_times')->result();
                ?>

                <div class="col-xs-12 tablebox">
                    <h4 class="table-title"><?= date('F Y') ?> (Current Month)</h4>
                    <div class="table-responsive-scroll">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Time / Date</th>
                                    <?php for($d=1;$d<=31;$d++): ?>
                                        <th><?= $d ?></th>
                                    <?php endfor; ?>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach($times as $t): ?>
                                    <tr>
                                        <td><?=gamename($t->game_id) ?> <?= date("h:i A", strtotime($t->gametime)) ?></td>
                                        <?php for($d=1;$d<=31;$d++): 
                                            $val = "";
                                            foreach($numbers as $row){
                                                if((int)$row->game_time_id == (int)$t->game_time_id && (int)$row->day_no == $d){
                                                    $val = $row->number;
                                                    break;
                                                }
                                            }
                                        ?>
                                        <td><?= $val ?></td>
                                        <?php endfor; ?>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>

<?php
// previous month
$prevYear  = date("Y", strtotime("first day of previous month"));
$prevMonth = date("F", strtotime("first day of previous month"));

$this->db->select("*, DAY(create_on) as day_no");
$this->db->where([
    'year'    => $prevYear,
    'month'   => $prevMonth,
    'status'  => 1,
    // 'game_id' => 59
]);
$this->db->where_not_in('game_id',59);
$prevNumbers = $this->db->get('number')->result();

$this->db->order_by('gametime', 'asc');
$this->db->group_by('game_id');
$this->db->where_not_in('game_id',59);
$pretimes = $this->db->get('game_times')->result();
?>

                <!-- last month data or filter -->    
                <div class="col-xs-12 tablebox filter-tabledata">
                <h4 class="table-title">
                    <?php if (!empty($month) && !empty($year)) : ?>
                        <?= $month . " " . $year ?> (Selected)
                    <?php else: ?>
                        <?= $prevMonth . " " . $prevYear ?> (Previous Month)
                    <?php endif; ?>
                </h4>

                <div class="table-responsive-scroll">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Time / Date</th>
                                <?php for($d=1;$d<=31;$d++): ?>
                                    <th><?= $d ?></th>
                                <?php endfor; ?>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach($pretimes as $t): ?>
                                <tr>
                                    <td><?=gamename($t->game_id) ?> <?= date("h:i A", strtotime($t->gametime)) ?></td>
                                    <?php for($d=1;$d<=31;$d++): 
                                        $val = "";
                                        foreach($prevNumbers as $row){
                                            if((int)$row->game_time_id == (int)$t->game_time_id && (int)$row->day_no == $d){
                                                $val = $row->number;
                                                break;
                                            }
                                        }
                                    ?>
                                    <td><?= $val ?></td>
                                    <?php endfor; ?>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div> 



            </div>

        </div>

        <div class="bottom-footer">
           <button onclick="window.location.href='index.php'">Go Home</button>
        </div>

    </section>

<?php include('footerscript.php'); ?>
<script>

function formatTime24to12(time) {
    let [hours, minutes, seconds] = time.split(":");
    hours = parseInt(hours);
    let ampm = hours >= 12 ? "PM" : "AM";
    hours = hours % 12 || 12; // 0 ko 12 banao
    return hours + ":00 " + ampm;
}

    $(document).on("change", "#month, #year select", function () {
    $.ajax({
        url: "<?= base_url('filter/gali_filterData') ?>",
        type: "POST",
        data: $("#filterForm").serialize(),
        dataType: "json",
        success: function (res) 
        {
            // Pehle table clear karo
            let html = `<div class="table-responsive-scroll"><table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Time / Date</th>`;
            for (let d = 1; d <= 31; d++) {
                html += `<th>${d}</th>`;
            }
            html += `</tr></thead><tbody>`;

            res.times.forEach(function (t) {
                html += `<tr><td>${t.game_name} ${formatTime24to12(t.gametime)}</td>`;
                for (let d = 1; d <= 31; d++) {
                    let val = "";
                    res.numbers.forEach(function (row) {
                        if (parseInt(row.game_time_id) === parseInt(t.game_time_id) &&
                            parseInt(row.day_no) === d) {
                            val = row.number;
                        }
                    });
                    html += `<td>${val}</td>`;
                }
                html += `</tr>`;
            });

            html += `</tbody></table></div>`;
            $(".filter-tabledata").html(html); // jahan table dikhana ho wahan replace kar do
        }
    });
});

</script>
