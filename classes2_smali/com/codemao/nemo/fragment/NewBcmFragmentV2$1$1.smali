.class Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1$1;
.super Ljava/lang/Object;
.source "NewBcmFragmentV2.java"

# interfaces
.implements Lcom/codemao/creativestore/listener/SaveBcmCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->quite(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 2

    .line 197
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$400(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V

    return-void
.end method
