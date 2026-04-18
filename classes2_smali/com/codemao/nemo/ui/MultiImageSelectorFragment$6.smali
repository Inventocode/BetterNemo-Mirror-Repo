.class Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;
.super Ljava/lang/Object;
.source "MultiImageSelectorFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/ui/MultiImageSelectorFragment;
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

.field final synthetic this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)V
    .registers 10

    .line 403
    iput-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_data"

    const-string v1, "_display_name"

    const-string v2, "date_added"

    const-string v3, "mime_type"

    const-string v4, "_size"

    const-string v5, "_id"

    const-string v6, "width"

    const-string v7, "height"

    .line 405
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .registers 14
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

    const-string v0, " DESC"

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-nez p1, :cond_60

    .line 420
    new-instance p1, Landroidx/loader/content/CursorLoader;

    iget-object p2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->IMAGE_PROJECTION:[Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->IMAGE_PROJECTION:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">0 AND ("

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=? OR "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->IMAGE_PROJECTION:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=? )"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string p2, "image/jpeg"

    const-string v2, "image/png"

    filled-new-array {p2, v2}, [Ljava/lang/String;

    move-result-object v8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->IMAGE_PROJECTION:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b9

    :cond_60
    const/4 v3, 0x1

    if-ne p1, v3, :cond_b8

    .line 430
    new-instance p1, Landroidx/loader/content/CursorLoader;

    iget-object v3, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->IMAGE_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->IMAGE_PROJECTION:[Ljava/lang/String;

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">0 AND "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " like \'%"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "path"

    .line 434
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "%\'"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->IMAGE_PROJECTION:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b9

    :cond_b8
    const/4 p1, 0x0

    :goto_b9
    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .registers 15
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

    if-eqz p2, :cond_f9

    .line 451
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {v0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$300(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Lcom/codemao/nemo/adapter/ImageGridAdapter;

    move-result-object v0

    if-eqz v0, :cond_f9

    .line 452
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_f9

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 454
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 456
    :cond_1a
    iget-object v1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 457
    iget-object v3, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 458
    iget-object v5, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 459
    iget-object v7, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-gtz v11, :cond_55

    goto :goto_ab

    :cond_55
    const/4 v7, 0x0

    .line 465
    :try_start_56
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_64

    .line 466
    new-instance v7, Lcom/codemao/nemo/bean/Image;

    invoke-direct {v7, v1, v3, v5, v6}, Lcom/codemao/nemo/bean/Image;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 467
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_64
    iget-object v3, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {v3}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$1100(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Z

    move-result v3

    if-nez v3, :cond_ab

    .line 470
    invoke-virtual {v1, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 471
    iget-object v2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {v2, v1}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$1200(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;Ljava/lang/String;)Lcom/codemao/nemo/bean/Folder;

    move-result-object v2

    if-nez v2, :cond_a4

    .line 473
    new-instance v2, Lcom/codemao/nemo/bean/Folder;

    invoke-direct {v2}, Lcom/codemao/nemo/bean/Folder;-><init>()V

    .line 474
    invoke-virtual {v1, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/codemao/nemo/bean/Folder;->name:Ljava/lang/String;

    .line 475
    iput-object v1, v2, Lcom/codemao/nemo/bean/Folder;->path:Ljava/lang/String;

    .line 476
    iput-object v7, v2, Lcom/codemao/nemo/bean/Folder;->cover:Lcom/codemao/nemo/bean/Image;

    .line 477
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 478
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    iput-object v1, v2, Lcom/codemao/nemo/bean/Folder;->images:Ljava/util/List;

    .line 480
    iget-object v1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {v1}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$1300(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    .line 482
    :cond_a4
    iget-object v1, v2, Lcom/codemao/nemo/bean/Folder;->images:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_a9} :catch_aa

    goto :goto_ab

    :catch_aa
    nop

    .line 488
    :cond_ab
    :goto_ab
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 490
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {p1}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$300(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Lcom/codemao/nemo/adapter/ImageGridAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/adapter/ImageGridAdapter;->setData(Ljava/util/List;)V

    .line 491
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {p1}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$900(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_dd

    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {p1}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$900(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_dd

    .line 492
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {p1}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$300(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Lcom/codemao/nemo/adapter/ImageGridAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {p2}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$900(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/adapter/ImageGridAdapter;->setDefaultSelected(Ljava/util/ArrayList;)V

    .line 494
    :cond_dd
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {p1}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$1100(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Z

    move-result p1

    if-nez p1, :cond_f9

    .line 495
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {p1}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$200(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Lcom/codemao/nemo/adapter/FolderAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {p2}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$1300(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/adapter/FolderAdapter;->setData(Ljava/util/List;)V

    .line 496
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {p1, v4}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$1102(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;Z)Z

    :cond_f9
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .registers 3

    .line 403
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

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
