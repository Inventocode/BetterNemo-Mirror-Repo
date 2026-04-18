.class Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;
.super Ljava/lang/Object;
.source "ImgSelFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final IMAGE_PROJECTION:[Ljava/lang/String;

.field final synthetic this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)V
    .registers 10

    .line 235
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_data"

    const-string v1, "_display_name"

    const-string v2, "date_added"

    const-string v3, "mime_type"

    const-string v4, "_size"

    const-string v5, "_id"

    const-string v6, "width"

    const-string v7, "height"

    .line 237
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_17

    .line 250
    new-instance p1, Landroidx/loader/content/CursorLoader;

    iget-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "date_added DESC"

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_17
    const/4 p2, 0x1

    if-ne p1, p2, :cond_44

    .line 254
    new-instance p1, Landroidx/loader/content/CursorLoader;

    iget-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->IMAGE_PROJECTION:[Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not like \'%.gif%\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date_added DESC"

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_44
    const/4 p1, 0x0

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const-string p1, "/"

    if-eqz p2, :cond_f1

    .line 264
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_f1

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 269
    :cond_12
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 271
    iget-object v5, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0xa

    cmp-long v9, v5, v7

    if-gtz v9, :cond_40

    goto :goto_aa

    .line 275
    :cond_40
    new-instance v5, Lcom/codemao/toolssdk/image_selector/bean/Image;

    invoke-direct {v5, v1, v3}, Lcom/codemao/toolssdk/image_selector/bean/Image;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {v3}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$500(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Z

    move-result v3

    if-nez v3, :cond_aa

    .line 279
    :try_start_50
    invoke-virtual {v1, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 281
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {v3}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$600(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_63
    :goto_63
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/toolssdk/image_selector/bean/Folder;

    .line 282
    iget-object v7, v6, Lcom/codemao/toolssdk/image_selector/bean/Folder;->path:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_63

    move-object v2, v6

    goto :goto_63

    :cond_79
    if-eqz v2, :cond_81

    .line 287
    iget-object v1, v2, Lcom/codemao/toolssdk/image_selector/bean/Folder;->images:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 289
    :cond_81
    new-instance v2, Lcom/codemao/toolssdk/image_selector/bean/Folder;

    invoke-direct {v2}, Lcom/codemao/toolssdk/image_selector/bean/Folder;-><init>()V

    .line 290
    invoke-virtual {v1, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/codemao/toolssdk/image_selector/bean/Folder;->name:Ljava/lang/String;

    .line 291
    iput-object v1, v2, Lcom/codemao/toolssdk/image_selector/bean/Folder;->path:Ljava/lang/String;

    .line 292
    iput-object v5, v2, Lcom/codemao/toolssdk/image_selector/bean/Folder;->cover:Lcom/codemao/toolssdk/image_selector/bean/Image;

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iput-object v1, v2, Lcom/codemao/toolssdk/image_selector/bean/Folder;->images:Ljava/util/List;

    .line 298
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {v1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$600(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_a8} :catch_a9

    goto :goto_aa

    :catch_a9
    nop

    .line 304
    :cond_aa
    :goto_aa
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_12

    .line 306
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$700(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 307
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$200(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->needCamera:Z

    if-eqz p1, :cond_d1

    .line 308
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$700(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/codemao/toolssdk/image_selector/bean/Image;

    invoke-direct {p2}, Lcom/codemao/toolssdk/image_selector/bean/Image;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_d1
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$700(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 311
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$800(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 312
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$900(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 314
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p1, v4}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$502(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;Z)Z

    :cond_f1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .registers 3

    .line 235
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
