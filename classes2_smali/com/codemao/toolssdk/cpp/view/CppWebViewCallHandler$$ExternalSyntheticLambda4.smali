.class public final synthetic Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/toolssdk/dsbridge/OnReturnValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Lkotlin/jvm/functions/Function1;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda4;->f$1:Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda4;->f$2:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onValue(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda4;->f$1:Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda4;->f$2:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->$r8$lambda$12PDdFQVQosxxtbARGVxPquZZm0(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;)V

    return-void
.end method
