.class public final synthetic Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/toolssdk/dsbridge/OnReturnValue;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/view/ToolsWebView;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/view/ToolsWebView;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    iput-object p2, p0, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda2;->f$4:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onValue(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    iget-object v1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda2;->f$4:Lkotlin/jvm/functions/Function1;

    move-object v5, p1

    check-cast v5, Lorg/json/JSONObject;

    invoke-static/range {v0 .. v5}, Lcom/codemao/toolssdk/view/ToolsWebView;->$r8$lambda$nuDNIiuj47xIT-E88jrnVAD2Nsk(Lcom/codemao/toolssdk/view/ToolsWebView;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;)V

    return-void
.end method
