.class public Lcn/codemao/android/stat/OpenUDID_service;
.super Landroid/app/Service;
.source "OpenUDID_service.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 26
    new-instance p1, Lcn/codemao/android/stat/OpenUDID_service$1;

    invoke-direct {p1, p0}, Lcn/codemao/android/stat/OpenUDID_service$1;-><init>(Lcn/codemao/android/stat/OpenUDID_service;)V

    return-object p1
.end method
