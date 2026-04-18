.class public interface abstract Lcom/codemao/creativecenter/utils/INotchScreen;
.super Ljava/lang/Object;
.source "INotchScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;,
        Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenCallback;,
        Lcom/codemao/creativecenter/utils/INotchScreen$NotchSizeCallback;
    }
.end annotation


# virtual methods
.method public abstract getNotchRect(Landroid/app/Activity;Lcom/codemao/creativecenter/utils/INotchScreen$NotchSizeCallback;)V
.end method

.method public abstract hasNotch(Landroid/app/Activity;)Z
.end method
