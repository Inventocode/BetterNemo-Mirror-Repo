.class public final synthetic Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/toolssdk/permissionx/callback/ForwardToSettingsCallback;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/view/ToolsWebView;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/view/ToolsWebView;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    iput-object p2, p0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onForwardToSettings(Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V
    .registers 5

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    iget-object v1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2}, Lcom/codemao/toolssdk/manager/PermissionManager;->$r8$lambda$3ZkcthIRxGFT3BWYl-T8PvBgoZs(Lcom/codemao/toolssdk/view/ToolsWebView;Landroid/content/Context;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V

    return-void
.end method
