.class public Ljxl/read/biff/PasswordException;
.super Ljxl/read/biff/BiffException;
.source "PasswordException.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    sget-object v0, Ljxl/read/biff/BiffException;->passwordProtected:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {p0, v0}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    return-void
.end method
