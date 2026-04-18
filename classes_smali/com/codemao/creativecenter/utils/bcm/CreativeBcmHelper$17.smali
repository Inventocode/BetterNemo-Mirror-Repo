.class Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$17;
.super Ljava/lang/Object;
.source "CreativeBcmHelper.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpCancellationSignal;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadBcmFile(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field final synthetic val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    .line 1971
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$17;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1972
    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$17;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .registers 2

    .line 1976
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$17;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->isCancel(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
