.class Lcom/readboy/personalsettingauth/BaseLoginFragment$2;
.super Ljava/lang/Object;
.source "BaseLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/personalsettingauth/BaseLoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

.field final synthetic val$contentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/readboy/personalsettingauth/BaseLoginFragment;Landroid/view/View;)V
    .registers 3

    .line 126
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$2;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    iput-object p2, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$2;->val$contentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 129
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$2;->val$contentView:Landroid/view/View;

    if-eqz p1, :cond_13

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    .line 130
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$2;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->hideSoftKeyboard(Landroid/view/View;)V

    :cond_13
    return-void
.end method
