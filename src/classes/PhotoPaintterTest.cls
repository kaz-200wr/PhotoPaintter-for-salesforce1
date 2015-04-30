@isTest
private class PhotoPaintterTest {
    static testMethod void postChatterTest(){
        PhotoPaintterController p = new PhotoPaintterController();
        p.imageData = 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAYEBQYFBAYGBQYHBwYIChAKCgkJChQODwwQFxQYG';
        p.parentId = UserInfo.getUserId();
        Test.startTest();
        p.postChatter();
        Test.stopTest();
    }
}