.class public abstract Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiWork;
.super Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiLoad;
.source "PythonJsApiWork.kt"


# instance fields
.field private final toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V
    .registers 2

    .line 6
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiLoad;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiWork;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    return-void
.end method
