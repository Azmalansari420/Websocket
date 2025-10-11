<?php include('headercss.php'); ?>

<style>
    section {
    padding-top: 86px;
    padding-bottom: 73px;
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
  padding: 15px;
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
            
            <div class="row">
                <div class="col-xs-12 tablebox">
                    <form class="row" >
                        <div class="col-xs-6">
                            <select class="form-control" name="month">
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
                        <div class="col-xs-6">
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
                    'game_id' => 59
                ]);
                $numbers = $this->db->get('number')->result();

                $this->db->where(['status'=>1,'game_id'=>59]);
                $this->db->order_by('gametime', 'asc');
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
                                        <td><?= date("h:i A", strtotime($t->gametime)) ?></td>
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



                <!-- last month data or filter -->    
                <div class="col-xs-12 tablebox">
                    <h4 class="table-title">Last Month</h4>
                    <div class="table-responsive-scroll">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>September</th>
                                    <th>1</th>
                                    <th>2</th>
                                    <th>3</th>
                                    <th>4</th>
                                    <th>5</th>
                                    <th>6</th>
                                    <th>7</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div> 



            </div>

        </div>

        <div class="bottom-footer">
            <a >Go Home</a>
        </div>

    </section>

<?php include('footerscript.php'); ?>
