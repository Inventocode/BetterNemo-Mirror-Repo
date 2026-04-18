.class Lcn/codemao/android/account/util/BBKManager$1;
.super Ljava/lang/Object;
.source "BBKManager.java"

# interfaces
.implements Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/account/util/BBKManager;->bindService(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/account/util/BBKManager;


# direct methods
.method constructor <init>(Lcn/codemao/android/account/util/BBKManager;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcn/codemao/android/account/util/BBKManager$1;->this$0:Lcn/codemao/android/account/util/BBKManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 3

    .line 61
    iget-object v0, p0, Lcn/codemao/android/account/util/BBKManager$1;->this$0:Lcn/codemao/android/account/util/BBKManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/codemao/android/account/util/BBKManager;->access$002(Lcn/codemao/android/account/util/BBKManager;Z)Z

    return-void
.end method

.method public onDisconnected()V
    .registers 3

    .line 66
    iget-object v0, p0, Lcn/codemao/android/account/util/BBKManager$1;->this$0:Lcn/codemao/android/account/util/BBKManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/codemao/android/account/util/BBKManager;->access$002(Lcn/codemao/android/account/util/BBKManager;Z)Z

    return-void
.end method
