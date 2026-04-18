.class public abstract Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiLoad;
.super Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiBase;
.source "PythonJsApiLoad.kt"


# instance fields
.field private final toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiBase;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    .line 8
    iput-object p1, p0, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiLoad;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    return-void
.end method
