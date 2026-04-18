.class public abstract Lcom/umeng/analytics/pro/bd;
.super Ljava/lang/Object;
.source "TUnion.java"

# interfaces
.implements Lcom/umeng/analytics/pro/at;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/bd$c;,
        Lcom/umeng/analytics/pro/bd$d;,
        Lcom/umeng/analytics/pro/bd$a;,
        Lcom/umeng/analytics/pro/bd$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/umeng/analytics/pro/bd<",
        "**>;F::",
        "Lcom/umeng/analytics/pro/ba;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/umeng/analytics/pro/at<",
        "TT;TF;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/analytics/pro/ca;",
            ">;",
            "Lcom/umeng/analytics/pro/cb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/Object;

.field protected b:Lcom/umeng/analytics/pro/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/bd;->c:Ljava/util/Map;

    .line 51
    const-class v1, Lcom/umeng/analytics/pro/cc;

    new-instance v2, Lcom/umeng/analytics/pro/bd$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/umeng/analytics/pro/bd$b;-><init>(Lcom/umeng/analytics/pro/bd$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-class v1, Lcom/umeng/analytics/pro/cd;

    new-instance v2, Lcom/umeng/analytics/pro/bd$d;

    invoke-direct {v2, v3}, Lcom/umeng/analytics/pro/bd$d;-><init>(Lcom/umeng/analytics/pro/bd$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/umeng/analytics/pro/bd;->b:Lcom/umeng/analytics/pro/ba;

    .line 46
    iput-object v0, p0, Lcom/umeng/analytics/pro/bd;->a:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/umeng/analytics/pro/ba;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/bd;->a(Lcom/umeng/analytics/pro/ba;Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Lcom/umeng/analytics/pro/bd;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/analytics/pro/bd<",
            "TT;TF;>;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 63
    iget-object v0, p1, Lcom/umeng/analytics/pro/bd;->b:Lcom/umeng/analytics/pro/ba;

    iput-object v0, p0, Lcom/umeng/analytics/pro/bd;->b:Lcom/umeng/analytics/pro/ba;

    .line 64
    iget-object p1, p1, Lcom/umeng/analytics/pro/bd;->a:Ljava/lang/Object;

    invoke-static {p1}, Lcom/umeng/analytics/pro/bd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/bd;->a:Ljava/lang/Object;

    return-void

    .line 61
    :cond_1e
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 68
    instance-of v0, p0, Lcom/umeng/analytics/pro/at;

    if-eqz v0, :cond_b

    .line 69
    check-cast p0, Lcom/umeng/analytics/pro/at;

    invoke-interface {p0}, Lcom/umeng/analytics/pro/at;->deepCopy()Lcom/umeng/analytics/pro/at;

    move-result-object p0

    return-object p0

    .line 70
    :cond_b
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_16

    .line 71
    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lcom/umeng/analytics/pro/au;->d(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 72
    :cond_16
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_21

    .line 73
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/umeng/analytics/pro/bd;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 74
    :cond_21
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_2c

    .line 75
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lcom/umeng/analytics/pro/bd;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 76
    :cond_2c
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_36

    .line 77
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/umeng/analytics/pro/bd;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    :cond_36
    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .registers 3

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 102
    invoke-static {v1}, Lcom/umeng/analytics/pro/bd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1f
    return-object v0
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/analytics/pro/bd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/analytics/pro/bd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_2d
    return-object v0
.end method

.method private static a(Ljava/util/Set;)Ljava/util/Set;
    .registers 3

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 93
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 94
    invoke-static {v1}, Lcom/umeng/analytics/pro/bd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1b
    return-object v0
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/pro/ba;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/umeng/analytics/pro/bd;->b:Lcom/umeng/analytics/pro/ba;

    return-object v0
.end method

.method protected abstract a(S)Lcom/umeng/analytics/pro/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)TF;"
        }
    .end annotation
.end method

.method public a(I)Ljava/lang/Object;
    .registers 2

    int-to-short p1, p1

    .line 124
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bd;->a(S)Lcom/umeng/analytics/pro/ba;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bd;->a(Lcom/umeng/analytics/pro/ba;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/umeng/analytics/pro/ba;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/umeng/analytics/pro/bd;->b:Lcom/umeng/analytics/pro/ba;

    if-ne p1, v0, :cond_9

    .line 120
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bd;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 117
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get the value of field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " because union\'s set field is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/umeng/analytics/pro/bd;->b:Lcom/umeng/analytics/pro/ba;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/bn;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation
.end method

.method protected abstract a(Lcom/umeng/analytics/pro/bs;S)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation
.end method

.method public a(ILjava/lang/Object;)V
    .registers 3

    int-to-short p1, p1

    .line 150
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bd;->a(S)Lcom/umeng/analytics/pro/ba;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/bd;->a(Lcom/umeng/analytics/pro/ba;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/ba;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/bd;->b(Lcom/umeng/analytics/pro/ba;Ljava/lang/Object;)V

    .line 145
    iput-object p1, p0, Lcom/umeng/analytics/pro/bd;->b:Lcom/umeng/analytics/pro/ba;

    .line 146
    iput-object p2, p0, Lcom/umeng/analytics/pro/bd;->a:Ljava/lang/Object;

    return-void
.end method

.method protected abstract a(Lcom/umeng/analytics/pro/bs;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation
.end method

.method public b()Ljava/lang/Object;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/umeng/analytics/pro/bd;->a:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract b(Lcom/umeng/analytics/pro/ba;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation
.end method

.method protected abstract b(Lcom/umeng/analytics/pro/bs;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation
.end method

.method public b(I)Z
    .registers 2

    int-to-short p1, p1

    .line 136
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bd;->a(S)Lcom/umeng/analytics/pro/ba;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bd;->b(Lcom/umeng/analytics/pro/ba;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/umeng/analytics/pro/ba;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/umeng/analytics/pro/bd;->b:Lcom/umeng/analytics/pro/ba;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method protected abstract c(Lcom/umeng/analytics/pro/ba;)Lcom/umeng/analytics/pro/bn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Lcom/umeng/analytics/pro/bn;"
        }
    .end annotation
.end method

.method public c()Z
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/umeng/analytics/pro/bd;->b:Lcom/umeng/analytics/pro/ba;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final clear()V
    .registers 2

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/umeng/analytics/pro/bd;->b:Lcom/umeng/analytics/pro/ba;

    .line 206
    iput-object v0, p0, Lcom/umeng/analytics/pro/bd;->a:Ljava/lang/Object;

    return-void
.end method

.method protected abstract d()Lcom/umeng/analytics/pro/bx;
.end method

.method public read(Lcom/umeng/analytics/pro/bs;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/umeng/analytics/pro/bd;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/pro/cb;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/cb;->b()Lcom/umeng/analytics/pro/ca;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/analytics/pro/ca;->b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bd;->a()Lcom/umeng/analytics/pro/ba;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 191
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bd;->b()Ljava/lang/Object;

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bd;->a()Lcom/umeng/analytics/pro/ba;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/pro/bd;->c(Lcom/umeng/analytics/pro/ba;)Lcom/umeng/analytics/pro/bn;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/analytics/pro/bn;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    .line 193
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    instance-of v2, v1, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_40

    .line 195
    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/au;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    goto :goto_47

    .line 197
    :cond_40
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_47
    :goto_47
    const-string v1, ">"

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/umeng/analytics/pro/bs;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/umeng/analytics/pro/bd;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/pro/cb;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/cb;->b()Lcom/umeng/analytics/pro/ca;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/analytics/pro/ca;->a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V

    return-void
.end method
