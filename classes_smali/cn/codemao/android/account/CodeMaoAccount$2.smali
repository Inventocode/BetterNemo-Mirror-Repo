.class Lcn/codemao/android/account/CodeMaoAccount$2;
.super Ljava/lang/Object;
.source "CodeMaoAccount.java"

# interfaces
.implements Lcn/codemao/android/account/listener/NetFailResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/account/CodeMaoAccount;->bytWaterproofWall(Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$netFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;


# direct methods
.method constructor <init>(Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 2

    .line 771
    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$2;->val$netFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 774
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$2;->val$netFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    invoke-interface {v0, p1, p2}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
