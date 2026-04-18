.class public final Lcom/codemao/toolssdk/python/util/PythonMediaHelper;
.super Ljava/lang/Object;
.source "PythonMediaHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/python/util/PythonMediaHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPythonMediaHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PythonMediaHelper.kt\ncom/codemao/toolssdk/python/util/PythonMediaHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,244:1\n1#2:245\n*E\n"
.end annotation


# instance fields
.field private audioResultCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private filePath:Ljava/lang/String;

.field private hostFragment:Landroidx/fragment/app/Fragment;

.field private imageResultCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/python/util/PythonMediaHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/python/util/PythonMediaHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createImageFile(Landroid/content/Context;)Ljava/io/File;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleDateFormat(\"yyyyMMdd_HHmmss\").format(Date())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JPEG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_38

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    const-string v1, ".jpg"

    .line 178
    invoke-static {v0, v1, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->filePath:Ljava/lang/String;

    const-string v0, "image"

    .line 186
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final dispatchTakePictureIntent(Landroid/content/Context;)V
    .registers 6

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_13

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_13
    const/4 v1, 0x0

    if-eqz p1, :cond_21

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_22

    :cond_21
    move-object v2, v1

    :goto_22
    if-eqz v2, :cond_5c

    .line 197
    :try_start_24
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->createImageFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_28} :catch_29

    goto :goto_30

    .line 200
    :catch_29
    iget-object v2, p0, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->imageResultCallback:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_30

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    :goto_30
    if-eqz v1, :cond_5c

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".takePhoto.fileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-static {p1, v2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "output"

    .line 209
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 210
    iget-object p1, p0, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->hostFragment:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_5c

    if-eqz p1, :cond_5c

    const v1, 0x11101

    .line 212
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_5c
    return-void
.end method

.method private final prepareAudioRecord(Landroid/content/Context;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method private final prepareTimeRecord()V
    .registers 1

    return-void
.end method

.method public static synthetic stopRecord$default(Lcom/codemao/toolssdk/python/util/PythonMediaHelper;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_a

    const/4 p2, 0x0

    .line 113
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->stopRecord(Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method


# virtual methods
.method public final captureImage(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iput-object p2, p0, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->imageResultCallback:Lkotlin/jvm/functions/Function1;

    .line 131
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->dispatchTakePictureIntent(Landroid/content/Context;)V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;Lcom/codemao/toolssdk/python/other/UploadHelper;)V
    .registers 6

    const-string p3, "uploadHelper"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x11101

    if-ne p1, p3, :cond_62

    .line 142
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p3, "进入上传照片的onActivityResult"

    invoke-virtual {p1, p3}, Lcom/codemao/toolssdk/utils/ExtLog;->dPytWork(Ljava/lang/String;)V

    const/4 p3, -0x1

    const/4 v0, 0x0

    if-ne p2, p3, :cond_56

    .line 144
    iget-object p2, p0, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->imageResultCallback:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_49

    .line 145
    iget-object p3, p0, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->filePath:Ljava/lang/String;

    if-eqz p3, :cond_43

    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "拍照结束:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->filePath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPythonPhoto(Ljava/lang/String;)V

    .line 147
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/codemao/toolssdk/python/util/PythonMediaHelper$onActivityResult$1$1;

    invoke-direct {p2, p0}, Lcom/codemao/toolssdk/python/util/PythonMediaHelper$onActivityResult$1$1;-><init>(Lcom/codemao/toolssdk/python/util/PythonMediaHelper;)V

    check-cast p2, Lcn/codemao/cuupload/UploadListener;

    invoke-virtual {p4, p1, p2}, Lcom/codemao/toolssdk/python/other/UploadHelper;->uploadImage(Ljava/io/File;Lcn/codemao/cuupload/UploadListener;)V

    goto :goto_62

    :cond_43
    if-eqz p2, :cond_62

    .line 160
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    :cond_49
    const-string p2, "拍照结束null"

    .line 162
    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPythonPhoto(Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->imageResultCallback:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_62

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    :cond_56
    const-string p2, "拍照取消"

    .line 166
    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPythonPhoto(Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->imageResultCallback:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_62

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62
    :goto_62
    return-void
.end method

.method public onDestory()V
    .registers 2

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->imageResultCallback:Lkotlin/jvm/functions/Function1;

    .line 242
    iput-object v0, p0, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->hostFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public final startRecord(Ljava/lang/String;Lcom/codemao/toolssdk/python/other/UploadHelper;Landroid/content/Context;)V
    .registers 5

    const-string v0, "recordTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p3}, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->prepareAudioRecord(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 53
    invoke-direct {p0}, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->prepareTimeRecord()V

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "开始录制"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/toolssdk/python/util/LogUtils;->log(Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method public final stopRecord(Lkotlin/jvm/functions/Function1;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->audioResultCallback:Lkotlin/jvm/functions/Function1;

    return-void
.end method
