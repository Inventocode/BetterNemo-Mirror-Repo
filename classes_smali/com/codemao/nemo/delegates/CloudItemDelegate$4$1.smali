.class Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;
.super Ljava/lang/Object;
.source "CloudItemDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/delegates/CloudItemDelegate$4;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/delegates/CloudItemDelegate$4;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;->this$1:Lcom/codemao/nemo/delegates/CloudItemDelegate$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 209
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;-><init>()V

    .line 210
    iget-object v1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;->this$1:Lcom/codemao/nemo/delegates/CloudItemDelegate$4;

    iget-object v1, v1, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$data:Lcom/codemao/nemo/bean/CloudData;

    iget-object v2, v1, Lcom/codemao/nemo/bean/CloudData;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 211
    iget-object v2, v1, Lcom/codemao/nemo/bean/CloudData;->work_url:Ljava/lang/String;

    iput-object v2, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    .line 212
    iget v2, v1, Lcom/codemao/nemo/bean/CloudData;->template_type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    const/4 v2, 0x3

    .line 213
    iput v2, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_type:I

    goto :goto_1c

    .line 215
    :cond_1a
    iput v2, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_type:I

    .line 217
    :goto_1c
    iget v2, v1, Lcom/codemao/nemo/bean/CloudData;->template_id:I

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    .line 218
    iget-object v2, v1, Lcom/codemao/nemo/bean/CloudData;->preview:Ljava/lang/String;

    iput-object v2, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    .line 219
    iget-wide v1, v1, Lcom/codemao/nemo/bean/CloudData;->work_id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    .line 220
    iget-object v2, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;->this$1:Lcom/codemao/nemo/delegates/CloudItemDelegate$4;

    iget-object v2, v2, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$data:Lcom/codemao/nemo/bean/CloudData;

    iget-object v2, v2, Lcom/codemao/nemo/bean/CloudData;->bcm_version:Ljava/lang/String;

    iput-object v2, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcmVersion:Ljava/lang/String;

    .line 221
    sput-object v1, Lcom/codemao/nemo/util/AppConstants;->DOWNLOADING_BCM_ID:Ljava/lang/String;

    const/4 v1, 0x0

    .line 222
    new-instance v2, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1$1;

    invoke-direct {v2, p0, v0}, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1$1;-><init>(Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-static {v0, v1, v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->download(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    return-void
.end method
