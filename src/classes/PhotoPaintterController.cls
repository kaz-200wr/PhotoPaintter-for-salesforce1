public with sharing class PhotoPaintterController {
    public Transient String parentId{set;get;}
    public Transient String imageData{set;get;}

    public PhotoPaintterController(){
    }

    public void postChatter(){
        String fileName_Title = DateTime.now().format() + '_' + system.UserInfo.getLastname() + '.jpg';
        
        FeedItem f = new FeedItem(ParentId=parentId, Type='ContentPost');
        f.ContentData = EncodingUtil.base64Decode(imageData.split(',', 2)[1]);
        f.ContentFileName = fileName_Title;
        f.Title = fileName_Title;
        Insert f;
    }    
}