.class public final synthetic Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field public final synthetic f$1:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    iput-boolean p3, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    iget-boolean v2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils;->$r8$lambda$I4AjCiFv5by0XGCtVKqAmEnBcpk(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Z)V

    return-void
.end method
