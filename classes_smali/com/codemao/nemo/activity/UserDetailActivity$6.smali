.class Lcom/codemao/nemo/activity/UserDetailActivity$6;
.super Ljava/lang/Object;
.source "UserDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserDetailActivity;->goForbidden()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserDetailActivity;)V
    .registers 2

    .line 486
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$6;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 489
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$6;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method
