.class Lcn/codemao/android/update/net/UpdateIml$2;
.super Ljava/lang/Object;
.source "UpdateIml.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/update/net/UpdateIml;->getUpdateData(Lcn/codemao/android/update/listener/NetResultListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/update/net/UpdateIml;

.field final synthetic val$policy:Z


# direct methods
.method constructor <init>(Lcn/codemao/android/update/net/UpdateIml;Z)V
    .registers 3

    .line 54
    iput-object p1, p0, Lcn/codemao/android/update/net/UpdateIml$2;->this$0:Lcn/codemao/android/update/net/UpdateIml;

    iput-boolean p2, p0, Lcn/codemao/android/update/net/UpdateIml$2;->val$policy:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 57
    iget-object v0, p0, Lcn/codemao/android/update/net/UpdateIml$2;->this$0:Lcn/codemao/android/update/net/UpdateIml;

    iget-boolean v1, p0, Lcn/codemao/android/update/net/UpdateIml$2;->val$policy:Z

    invoke-virtual {v0, v1}, Lcn/codemao/android/update/net/UpdateIml;->check(Z)V

    return-void
.end method
