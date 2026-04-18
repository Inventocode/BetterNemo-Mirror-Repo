.class Lcom/umeng/analytics/pro/al$a;
.super Lcom/umeng/analytics/pro/cc;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/cc<",
        "Lcom/umeng/analytics/pro/al;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 732
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cc;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/al$1;)V
    .registers 2

    .line 732
    invoke-direct {p0}, Lcom/umeng/analytics/pro/al$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/al;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 737
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->j()Lcom/umeng/analytics/pro/bx;

    .line 739
    :goto_3
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->l()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    .line 740
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bn;->b:B

    if-nez v1, :cond_75

    .line 829
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->k()V

    .line 833
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/al;->m()Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 837
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/al;->p()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 841
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/al;->s()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 845
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/al;->G()V

    return-void

    .line 842
    :cond_24
    new-instance p1, Lcom/umeng/analytics/pro/bt;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'length\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 838
    :cond_3f
    new-instance p1, Lcom/umeng/analytics/pro/bt;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'ts_secs\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 834
    :cond_5a
    new-instance p1, Lcom/umeng/analytics/pro/bt;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'serial_num\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 743
    :cond_75
    iget-short v0, v0, Lcom/umeng/analytics/pro/bn;->c:S

    const/16 v2, 0x8

    const/16 v3, 0xb

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_130

    .line 825
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto/16 :goto_12a

    :pswitch_84  #0xa
    if-ne v1, v2, :cond_91

    .line 818
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/pro/al;->j:I

    .line 819
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/al;->j(Z)V

    goto/16 :goto_12a

    .line 821
    :cond_91
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto/16 :goto_12a

    :pswitch_96  #0x9
    if-ne v1, v3, :cond_a3

    .line 810
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/al;->i:Ljava/lang/String;

    .line 811
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/al;->i(Z)V

    goto/16 :goto_12a

    .line 813
    :cond_a3
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto/16 :goto_12a

    :pswitch_a8  #0x8
    if-ne v1, v3, :cond_b5

    .line 802
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/al;->h:Ljava/lang/String;

    .line 803
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/al;->h(Z)V

    goto/16 :goto_12a

    .line 805
    :cond_b5
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto/16 :goto_12a

    :pswitch_ba  #0x7
    if-ne v1, v3, :cond_c7

    .line 794
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->A()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/al;->g:Ljava/nio/ByteBuffer;

    .line 795
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/al;->g(Z)V

    goto/16 :goto_12a

    .line 797
    :cond_c7
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_12a

    :pswitch_cb  #0x6
    if-ne v1, v2, :cond_d7

    .line 786
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/pro/al;->f:I

    .line 787
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/al;->f(Z)V

    goto :goto_12a

    .line 789
    :cond_d7
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_12a

    :pswitch_db  #0x5
    if-ne v1, v2, :cond_e7

    .line 778
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/pro/al;->e:I

    .line 779
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/al;->e(Z)V

    goto :goto_12a

    .line 781
    :cond_e7
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_12a

    :pswitch_eb  #0x4
    if-ne v1, v2, :cond_f7

    .line 770
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/pro/al;->d:I

    .line 771
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/al;->d(Z)V

    goto :goto_12a

    .line 773
    :cond_f7
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_12a

    :pswitch_fb  #0x3
    if-ne v1, v3, :cond_107

    .line 762
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/al;->c:Ljava/lang/String;

    .line 763
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/al;->c(Z)V

    goto :goto_12a

    .line 765
    :cond_107
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_12a

    :pswitch_10b  #0x2
    if-ne v1, v3, :cond_117

    .line 754
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/al;->b:Ljava/lang/String;

    .line 755
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/al;->b(Z)V

    goto :goto_12a

    .line 757
    :cond_117
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_12a

    :pswitch_11b  #0x1
    if-ne v1, v3, :cond_127

    .line 746
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/al;->a:Ljava/lang/String;

    .line 747
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/al;->a(Z)V

    goto :goto_12a

    .line 749
    :cond_127
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    .line 827
    :goto_12a
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->m()V

    goto/16 :goto_3

    nop

    :pswitch_data_130
    .packed-switch 0x1
        :pswitch_11b  #00000001
        :pswitch_10b  #00000002
        :pswitch_fb  #00000003
        :pswitch_eb  #00000004
        :pswitch_db  #00000005
        :pswitch_cb  #00000006
        :pswitch_ba  #00000007
        :pswitch_a8  #00000008
        :pswitch_96  #00000009
        :pswitch_84  #0000000a
    .end packed-switch
.end method

.method public synthetic a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 732
    check-cast p2, Lcom/umeng/analytics/pro/al;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/al$a;->b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/al;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/al;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 850
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/al;->G()V

    .line 852
    invoke-static {}, Lcom/umeng/analytics/pro/al;->H()Lcom/umeng/analytics/pro/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bx;)V

    .line 853
    iget-object v0, p2, Lcom/umeng/analytics/pro/al;->a:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 854
    invoke-static {}, Lcom/umeng/analytics/pro/al;->I()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 855
    iget-object v0, p2, Lcom/umeng/analytics/pro/al;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 858
    :cond_1d
    iget-object v0, p2, Lcom/umeng/analytics/pro/al;->b:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 859
    invoke-static {}, Lcom/umeng/analytics/pro/al;->J()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 860
    iget-object v0, p2, Lcom/umeng/analytics/pro/al;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 863
    :cond_30
    iget-object v0, p2, Lcom/umeng/analytics/pro/al;->c:Ljava/lang/String;

    if-eqz v0, :cond_43

    .line 864
    invoke-static {}, Lcom/umeng/analytics/pro/al;->K()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 865
    iget-object v0, p2, Lcom/umeng/analytics/pro/al;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 868
    :cond_43
    invoke-static {}, Lcom/umeng/analytics/pro/al;->L()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 869
    iget v0, p2, Lcom/umeng/analytics/pro/al;->d:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(I)V

    .line 870
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 871
    invoke-static {}, Lcom/umeng/analytics/pro/al;->M()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 872
    iget v0, p2, Lcom/umeng/analytics/pro/al;->e:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(I)V

    .line 873
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 874
    invoke-static {}, Lcom/umeng/analytics/pro/al;->N()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 875
    iget v0, p2, Lcom/umeng/analytics/pro/al;->f:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(I)V

    .line 876
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 877
    iget-object v0, p2, Lcom/umeng/analytics/pro/al;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_83

    .line 878
    invoke-static {}, Lcom/umeng/analytics/pro/al;->O()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 879
    iget-object v0, p2, Lcom/umeng/analytics/pro/al;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Ljava/nio/ByteBuffer;)V

    .line 880
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 882
    :cond_83
    iget-object v0, p2, Lcom/umeng/analytics/pro/al;->h:Ljava/lang/String;

    if-eqz v0, :cond_96

    .line 883
    invoke-static {}, Lcom/umeng/analytics/pro/al;->P()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 884
    iget-object v0, p2, Lcom/umeng/analytics/pro/al;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Ljava/lang/String;)V

    .line 885
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 887
    :cond_96
    iget-object v0, p2, Lcom/umeng/analytics/pro/al;->i:Ljava/lang/String;

    if-eqz v0, :cond_a9

    .line 888
    invoke-static {}, Lcom/umeng/analytics/pro/al;->Q()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 889
    iget-object v0, p2, Lcom/umeng/analytics/pro/al;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 892
    :cond_a9
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/al;->F()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 893
    invoke-static {}, Lcom/umeng/analytics/pro/al;->R()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 894
    iget p2, p2, Lcom/umeng/analytics/pro/al;->j:I

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/bs;->a(I)V

    .line 895
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 897
    :cond_be
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->d()V

    .line 898
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->b()V

    return-void
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 732
    check-cast p2, Lcom/umeng/analytics/pro/al;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/al$a;->a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/al;)V

    return-void
.end method
