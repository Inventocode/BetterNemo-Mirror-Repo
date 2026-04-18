.class Lcom/readboy/personalsettingauth/BaseAuthFragment$2;
.super Ljava/lang/Object;
.source "BaseAuthFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/personalsettingauth/BaseAuthFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;


# direct methods
.method constructor <init>(Lcom/readboy/personalsettingauth/BaseAuthFragment;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$2;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 189
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$2;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/BasePSFragment;->isFragmentDetach()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 192
    :cond_9
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$2;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->isFastDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_12

    return-void

    .line 195
    :cond_12
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$2;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-static {p1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->access$100(Lcom/readboy/personalsettingauth/BaseAuthFragment;)V

    return-void
.end method
