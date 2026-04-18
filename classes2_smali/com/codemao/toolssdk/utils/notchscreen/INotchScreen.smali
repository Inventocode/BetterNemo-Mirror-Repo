.class public interface abstract Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen;
.super Ljava/lang/Object;
.source "INotchScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;,
        Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;,
        Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchSizeCallback;
    }
.end annotation


# virtual methods
.method public abstract getNotchRect(Landroid/app/Activity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchSizeCallback;)V
.end method

.method public abstract hasNotch(Landroid/app/Activity;)Z
.end method
