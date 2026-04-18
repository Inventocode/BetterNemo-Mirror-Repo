.class Lcom/codemao/nemo/activity/UserDetailActivity$5;
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

    .line 479
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$5;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 482
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$5;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    const-string v0, "https://shequ.codemao.cn/mobile/community/234870"

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goWeb(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
