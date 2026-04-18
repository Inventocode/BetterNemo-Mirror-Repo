.class Lcom/ainirobot/oauth/presenter/AuthPresenter$1;
.super Ljava/lang/Object;
.source "AuthPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ainirobot/oauth/presenter/AuthPresenter;->getConnection()Landroid/content/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ainirobot/oauth/presenter/AuthPresenter;


# direct methods
.method constructor <init>(Lcom/ainirobot/oauth/presenter/AuthPresenter;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter$1;->this$0:Lcom/ainirobot/oauth/presenter/AuthPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 54
    iget-object p1, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter$1;->this$0:Lcom/ainirobot/oauth/presenter/AuthPresenter;

    invoke-static {p2}, Lcom/ainirobot/coreservice/aidl/ITokenGeter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ainirobot/coreservice/aidl/ITokenGeter;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ainirobot/oauth/presenter/AuthPresenter;->access$002(Lcom/ainirobot/oauth/presenter/AuthPresenter;Lcom/ainirobot/coreservice/aidl/ITokenGeter;)Lcom/ainirobot/coreservice/aidl/ITokenGeter;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 59
    iget-object p1, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter$1;->this$0:Lcom/ainirobot/oauth/presenter/AuthPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ainirobot/oauth/presenter/AuthPresenter;->access$002(Lcom/ainirobot/oauth/presenter/AuthPresenter;Lcom/ainirobot/coreservice/aidl/ITokenGeter;)Lcom/ainirobot/coreservice/aidl/ITokenGeter;

    return-void
.end method
