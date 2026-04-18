.class public final synthetic Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;[Lorg/json/JSONObject;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda6;->f$0:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda6;->f$2:[Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda6;->f$0:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda6;->f$2:[Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/view/ToolsWebView;->$r8$lambda$4ZZ7-VEftFekflwul8EAsg_A7SY(Lkotlin/jvm/functions/Function2;Ljava/lang/String;[Lorg/json/JSONObject;)V

    return-void
.end method
