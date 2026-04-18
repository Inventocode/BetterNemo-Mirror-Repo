.class public final Lcom/tencent/mm/opensdk/utils/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/opensdk/utils/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(ILjava/lang/String;)Ljava/lang/Object;
    .registers 4

    const-string v0, "MicroMsg.SDK.PluginProvider.Resolver"

    packed-switch p0, :pswitch_data_40

    goto :goto_22

    :pswitch_6  #0x6
    :try_start_6
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_b  #0x5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_10  #0x4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_15  #0x3
    return-object p1

    :pswitch_16  #0x2
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_1b  #0x1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catch_20
    move-exception p0

    goto :goto_28

    :goto_22
    const-string p0, "unknown type"

    invoke-static {v0, p0}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_27} :catch_20

    goto :goto_3d

    :goto_28
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "resolveObj exception:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3d
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_1b  #00000001
        :pswitch_16  #00000002
        :pswitch_15  #00000003
        :pswitch_10  #00000004
        :pswitch_b  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
