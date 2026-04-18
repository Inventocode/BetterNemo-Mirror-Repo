.class Lcom/codemao/nemo/util/ReworkHelper$3;
.super Ljava/lang/Object;
.source "ReworkHelper.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/ReworkHelper;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/ReworkHelper;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/ReworkHelper;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$3;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 2

    const/4 p1, 0x0

    .line 183
    sput-boolean p1, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    .line 184
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$3;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$1200(Lcom/codemao/nemo/util/ReworkHelper;)V

    return-void
.end method

.method public onSuccess()V
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$3;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$800(Lcom/codemao/nemo/util/ReworkHelper;)V

    return-void
.end method
