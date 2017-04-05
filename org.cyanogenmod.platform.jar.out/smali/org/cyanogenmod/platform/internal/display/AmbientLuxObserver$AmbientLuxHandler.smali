.class Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;
.super Landroid/os/Handler;
.source "AmbientLuxObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmbientLuxHandler"
.end annotation


# static fields
.field private static final MSG_TRANSITION:I = 0x1

.field private static final MSG_UPDATE_LUX:I


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    .line 82
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "direction":I
    const/4 v1, 0x0

    .line 90
    .local v1, "lux":F
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    monitor-enter v3

    .line 91
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit v3

    .line 86
    return-void

    .line 93
    :pswitch_0
    :try_start_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 94
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get5(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->add(F)V

    .line 99
    :pswitch_1
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get5(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->getAverage()F

    move-result v4

    invoke-static {v2, v4}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-set0(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;F)F

    .line 101
    invoke-static {}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    const-string/jumbo v2, "AmbientLuxObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lux= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get6(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 103
    const-string/jumbo v5, " mAmbientLux="

    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 103
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get1(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)F

    move-result v5

    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get1(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)F

    move-result v2

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get8(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)F

    move-result v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_3

    const/4 v0, 0x1

    .line 107
    :goto_1
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get6(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 108
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v2, v0}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-set1(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;I)I

    .line 109
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get2(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 110
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get2(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;

    move-result-object v2

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get6(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)I

    move-result v4

    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get1(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)F

    move-result v5

    invoke-interface {v2, v4, v5}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;->onTransition(IF)V

    .line 116
    :cond_2
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get5(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->size()I

    move-result v2

    if-le v2, v6, :cond_0

    .line 117
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get7(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v4, v2

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v4, v5}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 90
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 106
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
