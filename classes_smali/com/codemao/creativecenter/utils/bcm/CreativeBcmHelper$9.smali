.class Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;
.super Ljava/lang/Object;
.source "CreativeBcmHelper.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->doUploadSound(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativestore/bean/BcmVO;Ljava/util/ArrayList;Lcom/codemao/creativestore/bean/UserImgDictVO;)V
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

.field final synthetic val$keepStatus:Z

.field final synthetic val$needBindWorkId:Z

.field final synthetic val$needPublishProgress:Z

.field final synthetic val$type:I


# direct methods
.method public static synthetic $r8$lambda$trycUZy2cAIFEGbYqO8mmNAd3vA(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;->lambda$onError$0(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;IZLjava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V
    .registers 9

    .line 1584
    iput-boolean p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;->val$needBindWorkId:Z

    iput-boolean p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;->val$needPublishProgress:Z

    iput-object p3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object p4, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;->val$filePath:Ljava/lang/String;

    iput p5, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;->val$type:I

    iput-boolean p6, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;->val$keepStatus:Z

    iput-object p7, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;->val$bcmName:Ljava/lang/String;

    iput-object p8, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onError$0(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V
    .registers 2

    .line 1592
    invoke-interface {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;->onError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 4

    .line 1592
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1100(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess()V
    .registers 9

    .line 1587
    iget-boolean v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;->val$needBindWorkId:Z

    iget-boolean v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;->val$needPublishProgress:Z

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;->val$filePath:Ljava/lang/String;

    iget v4, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;->val$type:I

    iget-boolean v5, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;->val$keepStatus:Z

    iget-object v6, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;->val$bcmName:Ljava/lang/String;

    iget-object v7, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    invoke-static/range {v0 .. v7}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1200(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;IZLjava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    return-void
.end method
