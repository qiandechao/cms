#sql("query")
	select  
			 poster_id,
		 	 poster_name,
		 	 short_content,
		 	 image_url,
		 	 poster_content,
		 	 status,
		 	 poster_sort
	from
		  of_cms_poster 
	#if (poster_id?? ) where  poster_id = #para(poster_id)#end
	order by poster_sort asc 
#end
 
#sql("detail")
	select 
		 	 poster_id,
		 	 poster_name,
		 	 short_content,
		 	 image_url,
		 	 poster_content,
		 	 status,
		 	 poster_sort
	  from
		 of_cms_poster where  poster_id  = #para(poster_id)
#end

#sql("save")
	insert into of_cms_poster (
		 	 poster_id, 
		 	 poster_name, 
		 	 short_content, 
		 	 image_url, 
		 	 poster_content, 
		 	 status, 
		 	 poster_sort 
	) values(
		 	 #para(poster_id), 
		 	 #para(poster_name), 
		 	 #para(short_content), 
		 	 #para(image_url), 
		 	 #para(poster_content), 
		 	 #para(status), 
		 	 #para(poster_sort) 
	)
#end

#sql("delete")
	delete from of_cms_poster where  poster_id  = #para(poster_id)
#end

#sql("status")
	update  of_cms_poster set status = '0'  where poster_id  = #para(poster_id)
#end

#sql("update")
	update  
		of_cms_poster set 
			   poster_id = #para(poster_id), 
			   poster_name = #para(poster_name), 
			   short_content = #para(short_content), 
			   image_url = #para(image_url), 
			   poster_content = #para(poster_content), 
			   status = #para(status), 
			   poster_sort = #para(poster_sort) 
	where  poster_id  = #para(poster_id)
#end
 
