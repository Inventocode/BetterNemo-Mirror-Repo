.class Lcom/readboy/personalsettingauth/BaseAuthFragment$4;
.super Ljava/lang/Object;
.source "BaseAuthFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/personalsettingauth/BaseAuthFragment;->onActivityCreated(Landroid/os/Bundle;)V
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

    .line 265
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$4;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 268
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$4;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->isFastDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 271
    :cond_9
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$4;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->showLoad()V

    .line 272
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$4;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->access$200(Lcom/readboy/personalsettingauth/BaseAuthFragment;Z)Z

    return-void
.end method
