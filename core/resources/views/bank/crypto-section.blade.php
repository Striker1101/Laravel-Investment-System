 <div class="row">
     <div class="col-md-12">
         <div class="panel panel-default panel-shadow" data-collapsed="0">
             <!-- to apply shadow add class "panel-shadow" -->

             <!-- panel head -->
             <div class="panel-heading">
                 <div class="panel-title"><i class="fa fa-send"></i> <strong> Add Deposit via Crypto</strong></div>

             </div>

             <!-- panel body -->
             <div class="panel-body">
                 <div class="row">
                     @foreach ($crypto as $p)
                         <div class="col-sm-4 text-center">
                             <div class="panel panel-success panel-pricing">
                                 <div class="panel-heading">
                                     <h3 style="font-size: 28px;"><b>{{ $p->wallet_type }}</b></h3>
                                 </div>
                                 <div style="font-size: 18px;padding: 18px;" class="panel-body text-center">
                                     <p> Amount Range: <strong>{{ $p->minimum }} - {{ $p->maximum }}</strong></p>
                                 </div>

                                 <div class="panel-footer" style="overflow: hidden">
                                     <div class="col-sm-12">
                                         <a href="javascript:;"
                                             onclick="jQuery('#modal-{{ $p->id + 5000 }}').modal('show');"
                                             class="btn btn-info btn-block btn-icon icon-left"><i
                                                 class="fa fa-send"></i>
                                             Add Fund</a>
                                     </div>
                                 </div>
                             </div>
                         </div>
                     @endforeach
                 </div>
             </div>

         </div>
     </div>
 </div><!---ROW-->

 @foreach ($crypto as $p)
     <div class="modal fade" id="modal-{{ $p->id + 5000 }}">
         <div class="modal-dialog">
             <div class="modal-content">

                 <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                     <h4 class="modal-title"><i class="fa fa-send"></i> Deposit via
                         <strong>{{ $p->name }}</strong>
                     </h4>
                 </div>
                 {{ Form::open() }}
                 <div class="modal-body">
                     <div class="row">
                         <div class="col-md-12">
                             <div class="form-group">
                                 <label style="margin-top: 5px;font-size: 14px;"
                                     class="col-sm-2 col-sm-offset-2 control-label">Amount : </label>
                                 <div class="col-sm-7">
                                     <span style="color: green;margin-left: 10px;"> Range :<strong>
                                             {{ $p->minimum }} - {{ $p->maximum }}. </strong></span>
                                     <div class="input-group" style="margin-bottom: 15px;">
                                         <input type="text" value="" id="amount{{ $p->id + 5000 }}"
                                             name="amount" class="form-control" required>
                                         <span
                                             class="input-group-addon">&nbsp;<strong>{{ $p->wallet_type }}</strong></span>
                                         <input type="hidden" name="method_id" id="method_id{{ $p->id + 5000 }}"
                                             value="{{ $p->id + 5000 }}">
                                         <input type="hidden" name="holder" id="holder-{{ $p->wallet_type }}"
                                             value="{{ $p->wallet_type }}">
                                     </div>
                                 </div>
                             </div>

                             <div class="form-group">
                                 <div id="result{{ $p->id + 5000 }}"></div>
                             </div>
                         </div>
                     </div>
                 </div>
                 {{ Form::close() }}
             </div>
         </div>
     </div>
 @endforeach
