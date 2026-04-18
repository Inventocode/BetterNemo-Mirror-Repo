.class public final Lbleshadow/dagger/internal/DelegateFactory;
.super Ljava/lang/Object;
.source "DelegateFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDelegate(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbleshadow/javax/inject/Provider<",
            "TT;>;",
            "Lbleshadow/javax/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    invoke-static {p1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    check-cast p0, Lbleshadow/dagger/internal/DelegateFactory;

    .line 55
    iget-object v0, p0, Lbleshadow/dagger/internal/DelegateFactory;->delegate:Lbleshadow/javax/inject/Provider;

    if-nez v0, :cond_c

    .line 58
    iput-object p1, p0, Lbleshadow/dagger/internal/DelegateFactory;->delegate:Lbleshadow/javax/inject/Provider;

    return-void

    .line 56
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lbleshadow/dagger/internal/DelegateFactory;->delegate:Lbleshadow/javax/inject/Provider;

    if-eqz v0, :cond_9

    .line 36
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 34
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
