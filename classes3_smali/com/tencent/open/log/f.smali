.class public Lcom/tencent/open/log/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/tencent/open/log/f;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 35
    iput-object v0, p0, Lcom/tencent/open/log/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/log/f;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/open/log/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/tencent/open/log/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .registers 4

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 54
    iget-object v1, p0, Lcom/tencent/open/log/f;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p1, p0, Lcom/tencent/open/log/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    return p1
.end method

.method public a([Ljava/io/Writer;[C)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_6a

    if-eqz p2, :cond_6a

    .line 73
    array-length v0, p2

    if-eqz v0, :cond_6a

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_d

    goto/16 :goto_6a

    :cond_d
    const/4 v0, 0x0

    .line 78
    aget-object v1, p1, v0

    const/4 v2, 0x1

    .line 79
    aget-object p1, p1, v2

    .line 87
    array-length v2, p2

    .line 91
    invoke-virtual {p0}, Lcom/tencent/open/log/f;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v2

    const/4 v4, 0x0

    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 95
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    :goto_2b
    if-lez v7, :cond_1a

    if-le v5, v7, :cond_31

    move v9, v7

    goto :goto_32

    :cond_31
    move v9, v5

    :goto_32
    add-int v10, v8, v9

    .line 104
    invoke-virtual {v6, v8, v10, p2, v4}, Ljava/lang/String;->getChars(II[CI)V

    sub-int/2addr v5, v9

    add-int/2addr v4, v9

    sub-int/2addr v7, v9

    if-nez v5, :cond_4c

    if-eqz v1, :cond_43

    .line 116
    :try_start_3e
    invoke-virtual {v1, p2, v0, v2}, Ljava/io/Writer;->write([CII)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_43

    :catch_42
    nop

    :cond_43
    :goto_43
    if-eqz p1, :cond_48

    .line 122
    :try_start_45
    invoke-virtual {p1, p2, v0, v2}, Ljava/io/Writer;->write([CII)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_48

    :catch_48
    :cond_48
    move v5, v2

    move v8, v10

    const/4 v4, 0x0

    goto :goto_2b

    :cond_4c
    move v8, v10

    goto :goto_2b

    :cond_4e
    if-lez v4, :cond_5e

    if-eqz v1, :cond_57

    .line 139
    :try_start_52
    invoke-virtual {v1, p2, v0, v4}, Ljava/io/Writer;->write([CII)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    nop

    :cond_57
    :goto_57
    if-eqz p1, :cond_5e

    .line 145
    :try_start_59
    invoke-virtual {p1, p2, v0, v4}, Ljava/io/Writer;->write([CII)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_5e

    :catch_5d
    nop

    :cond_5e
    :goto_5e
    if-eqz v1, :cond_65

    .line 153
    :try_start_60
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_65

    :catch_64
    nop

    :cond_65
    :goto_65
    if-eqz p1, :cond_6a

    .line 158
    :try_start_67
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6a

    :catch_6a
    :cond_6a
    :goto_6a
    return-void
.end method

.method public b()V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/tencent/open/log/f;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 180
    iget-object v0, p0, Lcom/tencent/open/log/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/tencent/open/log/f;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
