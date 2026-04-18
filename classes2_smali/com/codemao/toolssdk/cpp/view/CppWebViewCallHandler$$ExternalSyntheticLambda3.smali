.class public final synthetic Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/toolssdk/dsbridge/OnReturnValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;

.field public final synthetic f$2:Ljava/lang/Runnable;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$5:[Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;[Lorg/json/JSONObject;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda3;->f$1:Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda3;->f$3:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda3;->f$4:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda3;->f$5:[Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final onValue(Ljava/lang/Object;)V
    .registers 9

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda3;->f$1:Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda3;->f$3:Lkotlin/jvm/functions/Function2;

    iget-object v4, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda3;->f$4:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda3;->f$5:[Lorg/json/JSONObject;

    move-object v6, p1

    check-cast v6, Lorg/json/JSONObject;

    invoke-static/range {v0 .. v6}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->$r8$lambda$aUE4lUgP6PGCmNGZyFzY-Fstyi4(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;[Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method
