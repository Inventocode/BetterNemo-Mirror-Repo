.class public final synthetic Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcn/codemao/android/account/listener/NetFailResultListener;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lcn/codemao/android/account/listener/NetSuccessResultListener;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcn/codemao/android/account/listener/NetFailResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda2;->f$1:Lcn/codemao/android/account/listener/NetFailResultListener;

    iput-object p3, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda2;->f$5:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 9

    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda2;->f$1:Lcn/codemao/android/account/listener/NetFailResultListener;

    iget-object v2, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda2;->f$5:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    move-object v6, p1

    check-cast v6, Lokhttp3/ResponseBody;

    invoke-static/range {v0 .. v6}, Lcn/codemao/android/account/CodeMaoAccount;->$r8$lambda$i7cG6MgiGENy6obZFGMHN-oBct0(Landroid/content/Context;Lcn/codemao/android/account/listener/NetFailResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lokhttp3/ResponseBody;)V

    return-void
.end method
