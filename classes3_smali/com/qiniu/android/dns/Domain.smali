.class public final Lcom/qiniu/android/dns/Domain;
.super Ljava/lang/Object;
.source "Domain.java"


# instance fields
.field public final domain:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/qiniu/android/dns/Domain;-><init>(Ljava/lang/String;ZZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZI)V
    .registers 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    return-void
.end method
