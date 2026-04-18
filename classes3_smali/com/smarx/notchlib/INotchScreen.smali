.class public interface abstract Lcom/smarx/notchlib/INotchScreen;
.super Ljava/lang/Object;
.source "INotchScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smarx/notchlib/INotchScreen$NotchScreenInfo;,
        Lcom/smarx/notchlib/INotchScreen$NotchScreenCallback;,
        Lcom/smarx/notchlib/INotchScreen$NotchSizeCallback;
    }
.end annotation


# virtual methods
.method public abstract getNotchRect(Landroid/app/Activity;Lcom/smarx/notchlib/INotchScreen$NotchSizeCallback;)V
.end method

.method public abstract hasNotch(Landroid/app/Activity;)Z
.end method
