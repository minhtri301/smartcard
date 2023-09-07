<div class="modal" id="add-bank" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="header-modal">
                <span class="modal-title fs-6" id="staticBackdropLabel">Thêm tài khoản ngân hàng</span>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">&times;</button>
            </div>
            <div class="body-modal">
                <form action="">
                <div class="form-group">
                    <label for="">Tên hiển thị <span style="color: red">*</span></label>
                    <select  name="bank_id" class="form-control" id="id-bank">
                        <option value="" selected disabled>Chọn ứng dụng</option>
                        @foreach ($getBank as $item)
                            <option value="{{$item->id}}" data-thumbnail="{{$item->image}}">{{$item->name}}</option>
                        @endforeach  
                    </select>
                    <div class="errorSelect" style="display: none; margin-top: -16px"></div> 
                </div>    
                <div class="form-group">
                    <label for="">Thêm số tài khoản<span style="color: red">*</span></label>
                    <div class="input-group"  data-target-input="nearest">
                        <input type="text" class="form-control " id="inputBank" name="bank_number" >
                    </div>
                    <div class="errorInput" style="display: none; margin-top: -16px; margin-bottom: 25px;"></div>
                </div>
            </div>
            <div class="modal-footer" >
                <button class="btn btn-danger btn-sm" onclick="loadCard()">Chọn</button>  
                </form>
            </div>
        </div>
    </div>
</div>