.class public final Lbleshadow/dagger/internal/InstanceFactory;
.super Ljava/lang/Object;
.source "InstanceFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;
.implements Lbleshadow/dagger/Lazy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "TT;>;",
        "Lbleshadow/dagger/Lazy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Lbleshadow/dagger/internal/InstanceFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbleshadow/dagger/internal/InstanceFactory;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lbleshadow/dagger/internal/InstanceFactory;->instance:Ljava/lang/Object;

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lbleshadow/dagger/internal/Factory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lbleshadow/dagger/internal/Factory<",
            "TT;>;"
        }
    .end annotation

    .line 34
    new-instance v0, Lbleshadow/dagger/internal/InstanceFactory;

    const-string v1, "instance cannot be null"

    invoke-static {p0, v1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lbleshadow/dagger/internal/InstanceFactory;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lbleshadow/dagger/internal/InstanceFactory;->instance:Ljava/lang/Object;

    return-object v0
.end method
