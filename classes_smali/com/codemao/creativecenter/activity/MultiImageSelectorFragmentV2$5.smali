.class Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;
.super Ljava/lang/Object;
.source "MultiImageSelectorFragmentV2.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;
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

.field final synthetic this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;


# direct methods
.method public static synthetic $r8$lambda$ElHthT8rXwCuk0uReXJTq9u_f_M(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->lambda$onLoadFinished$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zKld0DTfh5-VfQYz433gmTBBpyU(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;Landroid/database/Cursor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->lambda$onLoadFinished$1(Landroid/database/Cursor;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)V
    .registers 10

    .line 407
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_data"

    const-string v1, "_display_name"

    const-string v2, "date_added"

    const-string v3, "mime_type"

    const-string v4, "_size"

    const-string v5, "_id"

    const-string v6, "width"

    const-string v7, "height"

    .line 409
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$onLoadFinished$0(Ljava/util/List;)V
    .registers 3

    .line 508
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$000(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->setData(Ljava/util/List;)V

    .line 509
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$800(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$800(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2c

    .line 510
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$000(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$800(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->setDefaultSelected(Ljava/util/ArrayList;)V

    .line 512
    :cond_2c
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$1000(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 513
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$1002(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;Z)Z

    :cond_3a
    return-void
.end method

.method private synthetic lambda$onLoadFinished$1(Landroid/database/Cursor;)V
    .registers 15

    const-string v0, "/"

    if-eqz p1, :cond_d0

    .line 465
    :try_start_4
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {v1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$000(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    move-result-object v1

    if-eqz v1, :cond_d0

    .line 466
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_d0

    .line 467
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 468
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 470
    :cond_1a
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 471
    iget-object v4, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 472
    iget-object v6, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 473
    iget-object v8, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-gtz v12, :cond_55

    goto :goto_af

    .line 477
    :cond_55
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_59} :catch_cc

    if-nez v8, :cond_af

    const/4 v8, 0x0

    .line 480
    :try_start_5c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6a

    .line 481
    new-instance v8, Lcom/codemao/creativestore/bean/Image;

    invoke-direct {v8, v2, v4, v6, v7}, Lcom/codemao/creativestore/bean/Image;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 482
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_6a
    iget-object v4, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {v4}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$1000(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Z

    move-result v4

    if-nez v4, :cond_af

    .line 485
    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 486
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {v3, v2}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$1100(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;Ljava/lang/String;)Lcom/codemao/creativestore/bean/Folder;

    move-result-object v3

    if-nez v3, :cond_aa

    .line 488
    new-instance v3, Lcom/codemao/creativestore/bean/Folder;

    invoke-direct {v3}, Lcom/codemao/creativestore/bean/Folder;-><init>()V

    .line 489
    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/codemao/creativestore/bean/Folder;->name:Ljava/lang/String;

    .line 490
    iput-object v2, v3, Lcom/codemao/creativestore/bean/Folder;->path:Ljava/lang/String;

    .line 491
    iput-object v8, v3, Lcom/codemao/creativestore/bean/Folder;->cover:Lcom/codemao/creativestore/bean/Image;

    .line 492
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 493
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    iput-object v2, v3, Lcom/codemao/creativestore/bean/Folder;->images:Ljava/util/List;

    .line 495
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {v2}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$700(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_af

    .line 497
    :cond_aa
    iget-object v2, v3, Lcom/codemao/creativestore/bean/Folder;->images:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_af} :catch_af

    .line 504
    :catch_af
    :cond_af
    :goto_af
    :try_start_af
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 506
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_d0

    .line 507
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_cb} :catch_cc

    goto :goto_d0

    :catch_cc
    move-exception p1

    .line 521
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d0
    :goto_d0
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

    .line 424
    new-instance p1, Landroidx/loader/content/CursorLoader;

    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->IMAGE_PROJECTION:[Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->IMAGE_PROJECTION:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">0 AND ("

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=? OR "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->IMAGE_PROJECTION:[Ljava/lang/String;

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

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->IMAGE_PROJECTION:[Ljava/lang/String;

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

    .line 434
    new-instance p1, Landroidx/loader/content/CursorLoader;

    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->IMAGE_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->IMAGE_PROJECTION:[Ljava/lang/String;

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">0 AND "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " like \'%"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "path"

    .line 438
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

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->IMAGE_PROJECTION:[Ljava/lang/String;

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
    .registers 3
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

    .line 455
    new-instance p1, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;Landroid/database/Cursor;)V

    invoke-static {p1}, Lcom/codemao/creativestore/utils/CreativeThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .registers 3

    .line 407
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

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
