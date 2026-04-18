.class Lcom/umeng/analytics/pro/al$c;
.super Lcom/umeng/analytics/pro/cd;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/cd<",
        "Lcom/umeng/analytics/pro/al;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 910
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cd;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/al$1;)V
    .registers 2

    .line 910
    invoke-direct {p0}, Lcom/umeng/analytics/pro/al$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/al;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 915
    check-cast p1, Lcom/umeng/analytics/pro/by;

    .line 916
    iget-object v0, p2, Lcom/umeng/analytics/pro/al;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bm;->a(Ljava/lang/String;)V

    .line 917
    iget-object v0, p2, Lcom/umeng/analytics/pro/al;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bm;->a(Ljava/lang/String;)V

    .line 918
    iget-object v0, p2, Lcom/umeng/analytics/pro/al;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bm;->a(Ljava/lang/String;)V

    .line 919
    iget v0, p2, Lcom/umeng/analytics/pro/al;->d:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bm;->a(I)V

    .line 920
    iget v0, p2, Lcom/umeng/analytics/pro/al;->e:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bm;->a(I)V

    .line 921
    iget v0, p2, Lcom/umeng/analytics/pro/al;->f:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bm;->a(I)V

    .line 922
    iget-object v0, p2, Lcom/umeng/analytics/pro/al;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bm;->a(Ljava/nio/ByteBuffer;)V

    .line 923
    iget-object v0, p2, Lcom/umeng/analytics/pro/al;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bm;->a(Ljava/lang/String;)V

    .line 924
    iget-object v0, p2, Lcom/umeng/analytics/pro/al;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bm;->a(Ljava/lang/String;)V

    .line 925
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 926
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/al;->F()Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v1, 0x0

    .line 927
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_3e
    const/4 v1, 0x1

    .line 929
    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/by;->a(Ljava/util/BitSet;I)V

    .line 930
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/al;->F()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 931
    iget p2, p2, Lcom/umeng/analytics/pro/al;->j:I

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/bm;->a(I)V

    :cond_4d
    return-void
.end method

.method public bridge synthetic a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 910
    check-cast p2, Lcom/umeng/analytics/pro/al;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/al$c;->a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/al;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/al;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 938
    check-cast p1, Lcom/umeng/analytics/pro/by;

    .line 939
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bm;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/al;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 940
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/al;->a(Z)V

    .line 941
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/pro/al;->b:Ljava/lang/String;

    .line 942
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/al;->b(Z)V

    .line 943
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/pro/al;->c:Ljava/lang/String;

    .line 944
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/al;->c(Z)V

    .line 945
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bm;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/analytics/pro/al;->d:I

    .line 946
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/al;->d(Z)V

    .line 947
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bm;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/analytics/pro/al;->e:I

    .line 948
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/al;->e(Z)V

    .line 949
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bm;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/analytics/pro/al;->f:I

    .line 950
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/al;->f(Z)V

    .line 951
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bm;->A()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/pro/al;->g:Ljava/nio/ByteBuffer;

    .line 952
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/al;->g(Z)V

    .line 953
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/pro/al;->h:Ljava/lang/String;

    .line 954
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/al;->h(Z)V

    .line 955
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/pro/al;->i:Ljava/lang/String;

    .line 956
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/al;->i(Z)V

    .line 957
    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/by;->b(I)Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x0

    .line 958
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 959
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bm;->w()I

    move-result p1

    iput p1, p2, Lcom/umeng/analytics/pro/al;->j:I

    .line 960
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/al;->j(Z)V

    :cond_68
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 910
    check-cast p2, Lcom/umeng/analytics/pro/al;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/al$c;->b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/al;)V

    return-void
.end method
