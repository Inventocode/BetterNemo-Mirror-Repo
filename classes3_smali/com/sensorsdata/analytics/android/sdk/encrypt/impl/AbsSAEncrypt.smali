.class public abstract Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/AbsSAEncrypt;
.super Ljava/lang/Object;
.source "AbsSAEncrypt.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decryptEventRecord(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method public encryptEventRecord(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method
