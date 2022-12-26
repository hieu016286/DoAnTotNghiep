@foreach(['success','danger'] as $item)
    @if(session($item))
        <div class="flash-message">
            <div class="alert alert-{{ $item }}" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                <strong class="font-weight-100 font-size-14">@if($item == 'danger') <i class="fa fa-fw fa-exclamation-triangle"></i> @else <i class="fa fa-fw fa-check"></i> @endif{{ session($item) }}</strong>
            </div>
        </div>
    @endif
@endforeach