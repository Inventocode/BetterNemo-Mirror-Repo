.class Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;
.super Ljava/lang/Object;
.source "DWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/dsbridge/DWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerJavascriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;


# direct methods
.method private constructor <init>(Lcom/codemao/toolssdk/dsbridge/DWebView;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/toolssdk/dsbridge/DWebView;Lcom/codemao/toolssdk/dsbridge/DWebView$1;)V
    .registers 3

    .line 72
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;-><init>(Lcom/codemao/toolssdk/dsbridge/DWebView;)V

    return-void
.end method

.method private PrintDebugInfo(Ljava/lang/String;)V
    .registers 8

    const-string v0, "dsBridge"

    .line 75
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$100()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 77
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEBUG ERR MSG:\\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\\\'"

    const-string v5, "\\\\\'"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "alert(\'%s\')"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->evaluateJavascript(Ljava/lang/String;)V

    :cond_35
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 84
    const-class v0, Ljava/lang/Object;

    const-string v1, "_dscbstub"

    const-string v2, "code"

    const-string v3, "data"

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->dWebViewCallIntercept(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string p1, ""

    return-object p1

    .line 89
    :cond_11
    iget-object v4, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$200(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    .line 90
    aget-object v5, p1, v4

    .line 91
    iget-object v6, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v6}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$300(Lcom/codemao/toolssdk/dsbridge/DWebView;)Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x0

    aget-object p1, p1, v7

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 92
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const/4 v8, -0x1

    .line 94
    :try_start_31
    invoke-virtual {v6, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception v8

    .line 96
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :goto_39
    if-nez p1, :cond_45

    const-string p1, "Js bridge  called, but can\'t find a corresponded JavascriptInterface object , please check your code!"

    .line 99
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;->PrintDebugInfo(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 107
    :cond_45
    :try_start_45
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    const/4 v9, 0x0

    if-eqz p2, :cond_56

    .line 109
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_57

    :cond_56
    move-object p2, v9

    .line 111
    :goto_57
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 112
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_61} :catch_10e

    goto :goto_63

    :cond_62
    move-object v1, v9

    .line 122
    :goto_63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x2

    :try_start_68
    new-array v11, v10, [Ljava/lang/Class;

    aput-object v0, v11, v7

    .line 125
    const-class v12, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    aput-object v12, v11, v4

    invoke-virtual {v8, v5, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_74} :catch_76

    const/4 v0, 0x1

    goto :goto_7f

    :catch_76
    :try_start_76
    new-array v11, v4, [Ljava/lang/Class;

    aput-object v0, v11, v7

    .line 130
    invoke-virtual {v8, v5, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7e} :catch_7e

    :catch_7e
    const/4 v0, 0x0

    :goto_7f
    if-nez v9, :cond_9f

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not find method \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" implementation! please check if the  signature or namespace of the method is right "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;->PrintDebugInfo(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 143
    :cond_9f
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x11

    if-lt v8, v11, :cond_cd

    .line 144
    const-class v8, Landroid/webkit/JavascriptInterface;

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Landroid/webkit/JavascriptInterface;

    if-nez v8, :cond_cd

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Method "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not invoked, since  it is not declared with JavascriptInterface annotation! "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;->PrintDebugInfo(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 154
    :cond_cd
    invoke-virtual {v9, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    if-eqz v0, :cond_e5

    :try_start_d2
    new-array v0, v10, [Ljava/lang/Object;

    aput-object v1, v0, v7

    .line 158
    new-instance v1, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface$1;

    invoke-direct {v1, p0, p2}, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface$1;-><init>(Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;Ljava/lang/String;)V

    aput-object v1, v0, v4

    invoke-virtual {v9, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_e0} :catch_f8

    .line 207
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_e5
    :try_start_e5
    new-array p2, v4, [Ljava/lang/Object;

    aput-object v1, p2, v7

    .line 196
    invoke-virtual {v9, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 197
    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 198
    invoke-virtual {v6, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_f7} :catch_f8

    return-object p1

    :catch_f8
    move-exception p1

    .line 202
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v5, p1, v7

    const-string p2, "Call failed：The parameter of \"%s\" in Java is invalid."

    .line 203
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;->PrintDebugInfo(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_10e
    move-exception p1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object v5, p2, v7

    const-string v0, "The argument of \"%s\" must be a JSON object string!"

    .line 115
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 116
    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;->PrintDebugInfo(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
