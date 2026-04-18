.class Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;
.super Ljava/lang/Object;
.source "X5DWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/X5DWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerJavascriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/X5DWebView;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/X5DWebView;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private PrintDebugInfo(Ljava/lang/String;)V
    .registers 8

    const-string v0, "dsBridge"

    .line 77
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/codemao/nemo/view/X5DWebView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;->this$0:Lcom/codemao/nemo/view/X5DWebView;

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

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/X5DWebView;->evaluateJavascript(Ljava/lang/String;)V

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

    .line 87
    const-class v0, Ljava/lang/Object;

    const-string v1, "_dscbstub"

    const-string v2, "code"

    const-string v3, "data"

    .line 89
    iget-object v4, p0, Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/codemao/nemo/view/X5DWebView;->access$100(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    .line 90
    aget-object v5, p1, v4

    .line 91
    iget-object v6, p0, Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v6}, Lcom/codemao/nemo/view/X5DWebView;->access$200(Lcom/codemao/nemo/view/X5DWebView;)Ljava/util/Map;

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
    :try_start_28
    invoke-virtual {v6, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception v8

    .line 96
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :goto_30
    if-nez p1, :cond_3c

    const-string p1, "Js bridge  called, but can\'t find a corresponded JavascriptInterface object , please check your code!"

    .line 99
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;->PrintDebugInfo(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 107
    :cond_3c
    :try_start_3c
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    const/4 v9, 0x0

    if-eqz p2, :cond_4d

    .line 109
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4e

    :cond_4d
    move-object p2, v9

    .line 111
    :goto_4e
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 112
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_58} :catch_ff

    goto :goto_5a

    :cond_59
    move-object v1, v9

    .line 123
    :goto_5a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x2

    :try_start_5f
    new-array v11, v10, [Ljava/lang/Class;

    aput-object v0, v11, v7

    .line 126
    const-class v12, Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    aput-object v12, v11, v4

    invoke-virtual {v8, v5, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6b} :catch_6d

    const/4 v0, 0x1

    goto :goto_76

    :catch_6d
    :try_start_6d
    new-array v11, v4, [Ljava/lang/Class;

    aput-object v0, v11, v7

    .line 131
    invoke-virtual {v8, v5, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_75} :catch_75

    :catch_75
    const/4 v0, 0x0

    :goto_76
    if-nez v9, :cond_96

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not find method \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" implementation! please check if the  signature or namespace of the method is right "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;->PrintDebugInfo(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 143
    :cond_96
    const-class v8, Landroid/webkit/JavascriptInterface;

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Landroid/webkit/JavascriptInterface;

    if-nez v8, :cond_be

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Method "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not invoked, since  it is not declared with JavascriptInterface annotation! "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;->PrintDebugInfo(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 152
    :cond_be
    invoke-virtual {v9, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    if-eqz v0, :cond_d6

    :try_start_c3
    new-array v0, v10, [Ljava/lang/Object;

    aput-object v1, v0, v7

    .line 156
    new-instance v1, Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface$1;

    invoke-direct {v1, p0, p2}, Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface$1;-><init>(Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;Ljava/lang/String;)V

    aput-object v1, v0, v4

    invoke-virtual {v9, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_d1} :catch_e9

    .line 204
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d6
    :try_start_d6
    new-array p2, v4, [Ljava/lang/Object;

    aput-object v1, p2, v7

    .line 193
    invoke-virtual {v9, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 194
    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 195
    invoke-virtual {v6, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_e8} :catch_e9

    return-object p1

    :catch_e9
    move-exception p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v5, p1, v7

    const-string p2, "Call failed：The parameter of \"%s\" in Java is invalid."

    .line 200
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;->PrintDebugInfo(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_ff
    move-exception p1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object v5, p2, v7

    const-string v0, "The argument of \"%s\" must be a JSON object string!"

    .line 116
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 117
    invoke-direct {p0, p2}, Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;->PrintDebugInfo(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
