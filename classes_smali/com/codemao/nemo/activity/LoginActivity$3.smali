.class Lcom/codemao/nemo/activity/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity;->initViewSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LoginActivity;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$3;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$3;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/LoginActivity;->access$400(Lcom/codemao/nemo/activity/LoginActivity;)V

    return-void
.end method
