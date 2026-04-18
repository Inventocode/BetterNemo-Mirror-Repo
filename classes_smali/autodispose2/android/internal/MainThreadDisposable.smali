.class public abstract Lautodispose2/android/internal/MainThreadDisposable;
.super Ljava/lang/Object;
.source "MainThreadDisposable.java"


# instance fields
.field private final unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lautodispose2/android/internal/MainThreadDisposable;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final isDisposed()Z
    .registers 2

    .line 36
    iget-object v0, p0, Lautodispose2/android/internal/MainThreadDisposable;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
