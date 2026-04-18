.class public final Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$selectImage$selectImage$1;
.super Ljava/lang/Object;
.source "CppFileJsApi.kt"

# interfaces
.implements Lcom/codemao/toolssdk/manager/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->selectImage$selectImage$3(Ljava/lang/Object;Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $option:Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$selectImage$selectImage$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$selectImage$selectImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$selectImage$selectImage$1;->$option:Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResultCallback(IILandroid/content/Intent;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/16 v2, 0x3e9

    move/from16 v3, p1

    if-ne v3, v2, :cond_174

    const/4 v2, -0x1

    move/from16 v3, p2

    if-eq v3, v2, :cond_11

    goto/16 :goto_174

    :cond_11
    if-nez v1, :cond_14

    return-void

    :cond_14
    const-string v3, "result"

    .line 362
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_27

    .line 363
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_27

    :cond_25
    const/4 v5, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v5, 0x1

    :goto_28
    const/4 v6, 0x0

    const/16 v7, 0x7d0

    if-eqz v5, :cond_43

    .line 364
    iget-object v1, v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$selectImage$selectImage$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    invoke-static {v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->access$getGson$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;)Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    invoke-direct {v2, v7, v6}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 365
    iget-object v2, v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$selectImage$selectImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-interface {v2, v1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    goto/16 :goto_174

    .line 367
    :cond_43
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 368
    iget-object v5, v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$selectImage$selectImage$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    invoke-static {v5}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->access$getToolsWebView$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;)Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v5

    invoke-interface {v5}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v5

    .line 370
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 371
    iput-boolean v3, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 372
    invoke-static {v1, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 373
    iget v9, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 374
    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/high16 v11, 0x443a0000  # 744.0f

    int-to-float v9, v9

    div-float v12, v9, v11

    int-to-float v10, v10

    div-float v11, v10, v11

    .line 376
    invoke-static {v12, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/high16 v12, 0x3f800000  # 1.0f

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    div-float/2addr v10, v11

    div-float/2addr v9, v11

    float-to-int v11, v11

    .line 379
    iput v11, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 380
    iput-boolean v4, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 381
    invoke-static {v1, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_95

    .line 383
    iget-object v1, v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$selectImage$selectImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v2, v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$selectImage$selectImage$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    invoke-static {v2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->access$getGson$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;)Lcom/google/gson/Gson;

    move-result-object v2

    new-instance v3, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    invoke-direct {v3, v7, v6}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void

    .line 386
    :cond_95
    iget-object v8, v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$selectImage$selectImage$1;->$option:Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;

    invoke-virtual {v8}, Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;->getExt()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2e

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v8

    if-ne v8, v2, :cond_af

    .line 388
    iget-object v2, v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$selectImage$selectImage$1;->$option:Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;->getExt()Ljava/lang/String;

    move-result-object v2

    goto :goto_bf

    :cond_af
    iget-object v2, v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$selectImage$selectImage$1;->$option:Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;->getExt()Ljava/lang/String;

    move-result-object v2

    add-int/2addr v8, v3

    .line 389
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String).substring(startIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    :goto_bf
    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    .line 393
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/CMTools/compress_images/"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_e6

    .line 395
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 397
    :cond_e6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "image_"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v8, 0x2e

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 399
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 401
    iget-object v5, v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$selectImage$selectImage$1;->$option:Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;

    invoke-virtual {v5}, Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;->getExt()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    const-string v11, "png"

    invoke-static {v5, v11, v4, v8, v6}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_132

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_134

    .line 402
    :cond_132
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_134
    const/16 v5, 0x4b

    .line 400
    invoke-virtual {v1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 404
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 405
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 407
    iget-object v1, v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$selectImage$selectImage$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    invoke-static {v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->access$getGson$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;)Lcom/google/gson/Gson;

    move-result-object v1

    .line 408
    new-instance v3, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 410
    new-instance v4, Lcom/codemao/toolssdk/model/dsbridge/FileResult;

    .line 412
    new-instance v5, Lcom/codemao/toolssdk/model/dsbridge/FileData;

    .line 413
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://codemaotools"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    float-to-int v6, v9

    float-to-int v8, v10

    .line 412
    invoke-direct {v5, v2, v6, v8}, Lcom/codemao/toolssdk/model/dsbridge/FileData;-><init>(Ljava/lang/String;II)V

    .line 411
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 410
    invoke-direct {v4, v2}, Lcom/codemao/toolssdk/model/dsbridge/FileResult;-><init>(Ljava/util/List;)V

    .line 408
    invoke-direct {v3, v7, v4}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 407
    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 420
    iget-object v2, v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$selectImage$selectImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-interface {v2, v1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :cond_174
    :goto_174
    return-void
.end method
