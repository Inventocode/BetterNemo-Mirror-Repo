.class Lcn/codemao/android/update/net/UpdateIml$1;
.super Ljava/lang/Object;
.source "UpdateIml.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/update/net/UpdateIml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/update/net/UpdateIml;


# direct methods
.method constructor <init>(Lcn/codemao/android/update/net/UpdateIml;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcn/codemao/android/update/net/UpdateIml$1;->this$0:Lcn/codemao/android/update/net/UpdateIml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3

    .line 34
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0xdbba1

    if-eq p1, v0, :cond_1d

    const v0, 0xdbbb1

    if-eq p1, v0, :cond_d

    goto :goto_26

    .line 39
    :cond_d
    iget-object p1, p0, Lcn/codemao/android/update/net/UpdateIml$1;->this$0:Lcn/codemao/android/update/net/UpdateIml;

    invoke-static {p1}, Lcn/codemao/android/update/net/UpdateIml;->access$000(Lcn/codemao/android/update/net/UpdateIml;)Lcn/codemao/android/update/listener/NetResultListener;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/update/net/UpdateIml$1;->this$0:Lcn/codemao/android/update/net/UpdateIml;

    invoke-static {v0}, Lcn/codemao/android/update/net/UpdateIml;->access$100(Lcn/codemao/android/update/net/UpdateIml;)Lcn/codemao/android/update/vo/UpdateResultVO;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/update/listener/NetResultListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_26

    .line 36
    :cond_1d
    iget-object p1, p0, Lcn/codemao/android/update/net/UpdateIml$1;->this$0:Lcn/codemao/android/update/net/UpdateIml;

    invoke-static {p1}, Lcn/codemao/android/update/net/UpdateIml;->access$000(Lcn/codemao/android/update/net/UpdateIml;)Lcn/codemao/android/update/listener/NetResultListener;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/codemao/android/update/listener/NetResultListener;->onFailure(I)V

    :goto_26
    const/4 p1, 0x0

    return p1
.end method
