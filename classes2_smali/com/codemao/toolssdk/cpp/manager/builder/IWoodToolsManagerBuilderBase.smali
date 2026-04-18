.class public interface abstract Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;
.super Ljava/lang/Object;
.source "IWoodToolsManagerBuilderBase.kt"

# interfaces
.implements Lcom/codemao/toolssdk/cpp/manager/builder/ICppToolsManagerBuilderBiz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract build()Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;
.end method

.method public abstract build2()Lcom/codemao/toolssdk/evolving/CMToolsManager2;
.end method

.method public abstract setCookie(Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;
.end method

.method public abstract setOrientationListener(Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;
.end method

.method public abstract setSessionListener(Lcom/codemao/toolssdk/view/CMToolSessionListener;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;
.end method

.method public abstract setToolsData(Lcom/codemao/toolssdk/model/dsbridge/ToolsData;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;
.end method

.method public abstract setToolsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;
.end method

.method public abstract setToolsWebView(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;
.end method

.method public abstract setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;
.end method
