.class public Lcom/uc/crashsdk/a/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:I

.field private final c:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const-class v0, Lcom/uc/crashsdk/a/e;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/a/e;->a:Z

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lcom/uc/crashsdk/a/e;->b:I

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/uc/crashsdk/a/e;->c:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;)V
    .registers 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/uc/crashsdk/a/e;->b:I

    .line 83
    iput-object p2, p0, Lcom/uc/crashsdk/a/e;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 3

    .line 150
    iget v0, p0, Lcom/uc/crashsdk/a/e;->b:I

    const/16 v1, 0x1c3

    if-eq v0, v1, :cond_41

    const/16 v1, 0x1c4

    if-eq v0, v1, :cond_41

    packed-switch v0, :pswitch_data_48

    packed-switch v0, :pswitch_data_54

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown sync runnable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/uc/crashsdk/a/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crashsdk"

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-boolean v0, Lcom/uc/crashsdk/a/e;->a:Z

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    return v0

    :cond_2d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 164
    :pswitch_33  #0x2ef, 0x2f0, 0x2f1
    iget-object v1, p0, Lcom/uc/crashsdk/a/e;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/f;->a(I[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 155
    :pswitch_3a  #0x15f, 0x160, 0x161, 0x162
    iget-object v1, p0, Lcom/uc/crashsdk/a/e;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/h;->b(I[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 159
    :cond_41
    iget-object v1, p0, Lcom/uc/crashsdk/a/e;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->b(I[Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_data_48
    .packed-switch 0x15f
        :pswitch_3a  #0000015f
        :pswitch_3a  #00000160
        :pswitch_3a  #00000161
        :pswitch_3a  #00000162
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x2ef
        :pswitch_33  #000002ef
        :pswitch_33  #000002f0
        :pswitch_33  #000002f1
    .end packed-switch
.end method

.method public run()V
    .registers 3

    .line 88
    iget v0, p0, Lcom/uc/crashsdk/a/e;->b:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_68

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_64

    const/16 v1, 0x2bc

    if-eq v0, v1, :cond_60

    const/16 v1, 0x320

    if-eq v0, v1, :cond_5c

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_58

    const/16 v1, 0xca

    if-eq v0, v1, :cond_58

    packed-switch v0, :pswitch_data_6e

    packed-switch v0, :pswitch_data_7c

    packed-switch v0, :pswitch_data_86

    packed-switch v0, :pswitch_data_90

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown async runnable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/uc/crashsdk/a/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crashsdk"

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-boolean v0, Lcom/uc/crashsdk/a/e;->a:Z

    if-eqz v0, :cond_42

    return-void

    :cond_42
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 127
    :pswitch_48  #0x191, 0x192, 0x193, 0x195, 0x196, 0x197, 0x198, 0x199, 0x19a, 0x19b, 0x19c, 0x19d, 0x19e, 0x19f, 0x1a0
    iget-object v1, p0, Lcom/uc/crashsdk/a/e;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(I[Ljava/lang/Object;)V

    return-void

    .line 109
    :pswitch_4e  #0x12d, 0x12e, 0x12f
    iget-object v1, p0, Lcom/uc/crashsdk/a/e;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/h;->a(I[Ljava/lang/Object;)V

    return-void

    .line 98
    :pswitch_54  #0x64, 0x65, 0x66, 0x67, 0x68
    invoke-static {v0}, Lcom/uc/crashsdk/b;->a(I)V

    return-void

    .line 103
    :cond_58
    invoke-static {v0}, Lcom/uc/crashsdk/a;->a(I)V

    return-void

    .line 139
    :cond_5c
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(I)V

    return-void

    .line 131
    :cond_60
    invoke-static {v0}, Lcom/uc/crashsdk/f;->b(I)V

    return-void

    .line 135
    :cond_64
    invoke-static {v0}, Lcom/uc/crashsdk/a/d;->a(I)V

    return-void

    .line 90
    :cond_68
    iget-object v1, p0, Lcom/uc/crashsdk/a/e;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/f;->a(I[Ljava/lang/Object;)V

    return-void

    :pswitch_data_6e
    .packed-switch 0x64
        :pswitch_54  #00000064
        :pswitch_54  #00000065
        :pswitch_54  #00000066
        :pswitch_54  #00000067
        :pswitch_54  #00000068
    .end packed-switch

    :pswitch_data_7c
    .packed-switch 0x12d
        :pswitch_4e  #0000012d
        :pswitch_4e  #0000012e
        :pswitch_4e  #0000012f
    .end packed-switch

    :pswitch_data_86
    .packed-switch 0x191
        :pswitch_48  #00000191
        :pswitch_48  #00000192
        :pswitch_48  #00000193
    .end packed-switch

    :pswitch_data_90
    .packed-switch 0x195
        :pswitch_48  #00000195
        :pswitch_48  #00000196
        :pswitch_48  #00000197
        :pswitch_48  #00000198
        :pswitch_48  #00000199
        :pswitch_48  #0000019a
        :pswitch_48  #0000019b
        :pswitch_48  #0000019c
        :pswitch_48  #0000019d
        :pswitch_48  #0000019e
        :pswitch_48  #0000019f
        :pswitch_48  #000001a0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@action_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uc/crashsdk/a/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
