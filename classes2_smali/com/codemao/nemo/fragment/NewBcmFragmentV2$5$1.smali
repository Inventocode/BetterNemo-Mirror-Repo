.class Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5$1;
.super Ljava/lang/Object;
.source "NewBcmFragmentV2.java"

# interfaces
.implements Lcom/codemao/creativestore/listener/SaveBcmCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5;)V
    .registers 2

    .line 460
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .registers 2

    .line 468
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->hideSavintPop()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 2

    .line 463
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$400(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V

    return-void
.end method
