<table class="table table-striped">
	<tr class="table-header">
		<th>{{ Lang::get('lang.username') }}</th>
		<th>{{ Lang::get('lang.num_of_flags') }}</th>
		<th>{{ Lang::get('lang.actions') }}</th>
		<th>{{ Lang::get('lang.admin') }}</th>
		<th>Edit admin</th>
	</tr>
	@foreach($users as $user)
	<tr>
		<td><a href="{{ URL::to('user') . '/' . $user->username }}" target="_blank">
			<?php if(strlen($user->username) > 40){
					echo substr($user->username, 0, 40) . '...';
				  } else {
				  	echo $user->username;
				  }
			?>
			</a>
		</td>
		<td>
			{{ $user->totalFlags() }}
		</td>
		<td>
			@if($user->active)
				<a href="{{ URL::to('admin/deactivate_user') . '/' . $user->id }}" class="btn btn-xs btn-danger disable-username-{{ $user->username }}"><span class="fa fa-minus-circle"></span> {{ Lang::get('lang.disable_user') }}</a>
			@else
				<a href="{{ URL::to('admin/activate_user') . '/' . $user->id }}" class="btn btn-xs btn-success"><span class="fa fa-plus-circle"></span> {{ Lang::get('lang.enable_user') }}</a>
			@endif
		</td>
		<td>
			{{ $user->admin }}
		</td>
		<td>
			<button type="button" class="btn btn-primary" id="{{ $user->id }}" data-toggle="modal" data-target="#modal-{{ $user->id }}">Edit</button>
		</td>
	</tr>
	@endforeach
</table>

<div class="modal-container">
	@foreach($users as $user)
	<!-- Modal -->
	<div class="modal fade bs-example-modal-sm" id="modal-{{ $user->id }}" data-id="{{ $user->id }}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="false">×</span></button>
				<h4 class="modal-title" id="mySmallModalLabel">Edit Admin<a class="anchorjs-link" href="#mySmallModalLabel"><span class="anchorjs-icon"></span></a></h4>
			</div>
	       	{{ Form::open(array('action' => array('AdminController@edit_users',$user->id) , 'class'=>'form-horizontal','id'=>'formedituser','enctype'=>'multipart/form-data')) }}
        		<div class="group_control">
        			<label for="title">{{ Lang::get('lang.username')}}:</label>
					<p class="username">{{$user->username}}</p>
        		</div>
				<div class="group_control">
					<label for="title">User/{{ Lang::get('lang.admin') }}:</label>
					<select name="admin" class="form-control">
						<option value="0" {{ ($user->admin == 0) ? "selected" : "" }}>User</option>
						<option value="1" {{ ($user->admin == 1) ? "selected" : "" }}>Admin</option>
					</select>
				</div>
				<div class="group_control"><button type="submit" id="{{ $user->id }}" class="btn btn-primary">Edit</button></div>
	      	{{ Form::close() }}

	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	@endforeach
</div>