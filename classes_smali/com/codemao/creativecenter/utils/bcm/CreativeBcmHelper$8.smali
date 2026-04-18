.class Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;
.super Ljava/lang/Object;
.source "CreativeBcmHelper.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadBcm(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bcmName:Ljava/lang/String;

.field final synthetic val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

.field final synthetic val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$finalBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

.field final synthetic val$finalImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

.field final synthetic val$keepStatus:Z

.field final synthetic val$needBindWorkId:Z

.field final synthetic val$needPublishProgress:Z

.field final synthetic val$type:I

.field final synthetic val$uploadSounds:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$CWxSKe8RJ1Pex8IH6s465RKt9dA(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->lambda$onError$0(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativestore/bean/BcmVO;Ljava/util/ArrayList;Lcom/codemao/creativestore/bean/UserImgDictVO;)V
    .registers 12

    .line 1554
    iput-boolean p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$needBindWorkId:Z

    iput-boolean p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$needPublishProgress:Z

    iput-object p3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-boolean p4, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$keepStatus:Z

    iput p5, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$type:I

    iput-object p6, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    iput-object p7, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$bcmName:Ljava/lang/String;

    iput-object p8, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$filePath:Ljava/lang/String;

    iput-object p9, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$finalBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    iput-object p10, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$uploadSounds:Ljava/util/ArrayList;

    iput-object p11, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$finalImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onError$0(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V
    .registers 2

    .line 1562
    invoke-interface {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;->onError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 4

    .line 1562
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1100(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess()V
    .registers 12

    .line 1557
    iget-boolean v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$needBindWorkId:Z

    iget-boolean v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$needPublishProgress:Z

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-boolean v3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$keepStatus:Z

    iget v4, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$type:I

    iget-object v5, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    iget-object v6, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$bcmName:Ljava/lang/String;

    iget-object v7, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$filePath:Ljava/lang/String;

    iget-object v8, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$finalBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    iget-object v9, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$uploadSounds:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;->val$finalImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-static/range {v0 .. v10}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1000(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativestore/bean/BcmVO;Ljava/util/ArrayList;Lcom/codemao/creativestore/bean/UserImgDictVO;)V

    return-void
.end method
